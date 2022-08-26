from signal import pause
from gpiozero import Button
import threading
import threading
import socket
host = '127.0.0.1'
port = 5587


button1 = Button(21)
button2 = Button(20)


def sendSignalUp():
        print("up")
        sendToServer("up")


def sendSignalDown():
        print("down")
        sendToServer("down")


def sendToServer(message):
    ClientSocket = socket.socket()
    try:
        ClientSocket.connect((host, port))
        ClientSocket.send(str.encode(message))
        Response = ClientSocket.recv(2048)
        print(Response.decode('utf-8'))
        ClientSocket.close()
    except socket.error as e:
        print(str(e))


def runButton(button, message):
        try:
            if message == "up":
                    button.when_pressed = sendSignalUp
                    pause()
            elif message == "down":
                    button.when_pressed = sendSignalDown
                    pause()

        except KeyboardInterrupt:
            pass


threading.Thread(target=runButton, args=([button1, "up"])).start()
threading.Thread(target=runButton, args=([button2, "down"])).start()