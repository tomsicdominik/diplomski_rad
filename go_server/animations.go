package main

import (
	mongo "go_server/mongodb"
	pb "go_server/proto"
)

func generateInitialAnimation(d *pb.Device) error {
	animation := pb.Animation{DeviceId: d.Id, AnimationDuration: 10, New: true, OnTime: 10, Rows: d.Rows, LedsPerRow: d.LedsPerRow}
	animation.Colours = append(animation.Colours, &pb.RGB{Red: 0, Green: 0, Blue: 0})
	animation.Colours = append(animation.Colours, &pb.RGB{Red: 180, Green: 180, Blue: 180})
	var i int32
	for i = 1; i <= d.Rows; i++ {
		animation.Meta = append(animation.Meta, &pb.RowMeta{Row: i, Direction: "outward"})
	}
	setAnimationStpes(&animation)
	mongoClient := mongo.NewClient()

	err := mongoClient.SaveAnimation(&animation)
	if err != nil {
		return err
	}
	return nil
}

func registerAnimation(animation *pb.Animation) error {
	mongoClient := mongo.NewClient()
	setAnimationStpes(animation)
	err := mongoClient.ReplaceAnimation(animation)
	if err != nil {
		return err
	}
	return nil
}

func setAnimationStpes(animation *pb.Animation) {
	animation.UpON = nil
	animation.UpOFF = nil
	animation.DownON = nil
	animation.DownOFF = nil
	for _, row := range animation.Meta {
		if row.Direction == "right" {
			setRightAnimation(row, animation)
		}
		if row.Direction == "left" {
			setLeftAnimation(row, animation)
		}
		if row.Direction == "outward" {
			setOutwardAnimation(row, animation)
		}
		if row.Direction == "inward" {
			setInwardAnimation(row, animation)
		}
	}
	animation.Pause = animation.AnimationDuration * 1000 / int32(len(animation.UpON))
}

func setLeftAnimation(row *pb.RowMeta, animation *pb.Animation) {
	var i int32
	for i = 0; i < animation.LedsPerRow; i++ {
		animation.UpON = append(animation.UpON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.UpOFF = append(animation.UpOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
				},
			})
		invertedRow := animation.Rows - row.Row
		animation.DownON = append(animation.DownON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + (invertedRow * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.DownOFF = append(animation.DownOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + (invertedRow * animation.LedsPerRow), Colour: 0},
				},
			})
	}

}

func setRightAnimation(row *pb.RowMeta, animation *pb.Animation) {
	var i int32
	for i = animation.LedsPerRow - 1; i >= 0; i-- {
		animation.UpON = append(animation.UpON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
				},
			})
		animation.UpOFF = append(animation.UpOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
				},
			})
		invertedRow := animation.Rows - row.Row
		animation.DownON = append(animation.DownON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + (invertedRow * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.DownOFF = append(animation.DownOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: i + (invertedRow * animation.LedsPerRow), Colour: 0},
				},
			})
	}
}

func setOutwardAnimation(row *pb.RowMeta, animation *pb.Animation) {
	var i int32
	var limit int32
	var startLeft int32
	var startRight int32
	if animation.LedsPerRow%2 == 0 {
		limit = animation.LedsPerRow / 2
		startLeft = animation.LedsPerRow/2 - 1
		startRight = animation.LedsPerRow / 2
	} else {
		limit = animation.LedsPerRow / 2
		startLeft = animation.LedsPerRow / 2
		startRight = animation.LedsPerRow / 2
	}
	for i = 0; i < limit; i++ {
		animation.UpON = append(animation.UpON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
					{Position: (startRight + i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.UpOFF = append(animation.UpOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
					{Position: (startRight + i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
				},
			})
		invertedRow := animation.Rows - row.Row
		animation.DownON = append(animation.DownON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + (invertedRow * animation.LedsPerRow), Colour: 1},
					{Position: (startRight + i) + (invertedRow * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.DownOFF = append(animation.DownOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + (invertedRow * animation.LedsPerRow), Colour: 0},
					{Position: (startRight + i) + (invertedRow * animation.LedsPerRow), Colour: 0},
				},
			})
	}

}

func setInwardAnimation(row *pb.RowMeta, animation *pb.Animation) {
	var i int32
	var limit int32
	var startLeft int32 = animation.LedsPerRow - 1
	var startRight int32 = 0
	if animation.LedsPerRow%2 == 0 {
		limit = animation.LedsPerRow / 2
	} else {
		limit = animation.LedsPerRow/2 + 1
	}
	for i = 0; i < limit; i++ {
		animation.UpON = append(animation.UpON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
					{Position: (startRight + i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.UpOFF = append(animation.UpOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
					{Position: (startRight + i) + ((row.Row - 1) * animation.LedsPerRow), Colour: 0},
				},
			})
		invertedRow := animation.Rows - row.Row
		animation.DownON = append(animation.DownON,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + (invertedRow * animation.LedsPerRow), Colour: 1},
					{Position: (startRight + i) + (invertedRow * animation.LedsPerRow), Colour: 1},
				},
			})

		animation.DownOFF = append(animation.DownOFF,
			&pb.Step{
				PositionColour: []*pb.PositionColour{
					{Position: (startLeft - i) + (invertedRow * animation.LedsPerRow), Colour: 0},
					{Position: (startRight + i) + (invertedRow * animation.LedsPerRow), Colour: 0},
				},
			})
	}
}
