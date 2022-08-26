import RPi.GPIO as GPIO
import time
from rpi_ws281x import *
import json
import sys
import socket
from _thread import *


global controlSettings
global animation
host = '0.0.0.0'
port = 5587

global strip

global animationactive
animationactive = False

read = 1

while read:
    print("initial loading")
    try:
        reader = open("control.json", 'r')
        controlRaw = reader.read()
        reader.close
        controlSettings = json.loads(controlRaw)
        print("loaded control")
    except:
        time.sleep(3)
        continue

    try:
        reader = open("animation.json", 'r')
        animationRaw = reader.read()
        reader.close
        animation = json.loads(animationRaw)
        print("loaded animation")
    except:
        time.sleep(3)
        continue
    read = 0
print("loaded data")


def load_control():
    global controlSettings
    print("load control")
    try:
        reader = open("control.json", 'r')
        controlRaw = reader.read()
        reader.close
        controlSettings = json.loads(controlRaw)
        print("loaded control")
        print (controlSettings)
    except:
        print("error with loading control")


def load_animation():
    global animation
    print("load animation")
    try:
        reader = open("animation.json", 'r')
        animationRaw = reader.read()
        reader.close
        animation = json.loads(animationRaw)
        print("loaded animation")
    except:
        print("error with loading animation")


def client_handler(connection):
    data = connection.recv(2048)
    message = data.decode('utf-8')
    reply = f'Server: OK'
    connection.sendall(str.encode(reply))
    connection.close()
    if message == 'animation':
        load_animation()
    if message == 'control':
        load_control()
        if controlSettings["state"] == "off" or controlSettings["state"] == "sensor":
            setColor(Color(0, 0, 0))
        if controlSettings["state"] == "on":
            setColor(Color(controlSettings['colour']['red'], controlSettings['colour']['green'], controlSettings['colour']['blue']))
    if message == "up":
        print("up")
        if controlSettings["state"] == "sensor" and not animationactive:
            runAnimation(animation['upON'], animation['upOFF'])
    if message == "down":
        print("down")
        if controlSettings["state"] == "sensor" and not animationactive:
            runAnimation(animation['downON'], animation['downOFF'])






def accept_connections(ServerSocket):
    Client, address = ServerSocket.accept()
    print('Connected to: ' + address[0] + ':' + str(address[1]))
    start_new_thread(client_handler, (Client, ))

def start_server(host, port):
    ServerSocket = socket.socket()
    try:
        ServerSocket.bind((host, port))
    except socket.error as e:
        print(str(e))
    print(f'Server is listing on the port {port}...')
    ServerSocket.listen()
    while True:
        try:
            accept_connections(ServerSocket)
        except KeyboardInterrupt:
            sys.exit()
        except:
            print("Something wrong with connection")

def initiateStrip():
    global strip
    LED_COUNT = animation['rows'] * animation['ledsPerRow']
    LED_PIN = 18
    LED_FREQ_HZ = 800000
    LED_DMA = 10
    LED_INVERT = False
    LED_BRIGHTNESS = 50
    LED_CHANNEL = 0
    strip = Adafruit_NeoPixel(LED_COUNT, LED_PIN, LED_FREQ_HZ, LED_DMA, LED_INVERT, LED_BRIGHTNESS, LED_CHANNEL)
    strip.begin()

    if controlSettings["state"] == "off" or controlSettings["state"] == "sensor":
        setColor(Color(0, 0, 0))
    if controlSettings["state"] == "on":
        setColor(Color(controlSettings['colour']['red'], controlSettings['colour']['green'],
                       controlSettings['colour']['blue']))


def setColor(color):
    global strip
    for i in range(strip.numPixels()):
        strip.setPixelColor(i, color)
    strip.show()

def getColor(colorId):
    return Color(animation['colours'][colorId]['red'], animation['colours'][colorId]['green'], animation['colours'][colorId]['blue'])

def runAnimation(sequenceON, sequenceOFF):
    global strip
    global animationactive

    animationactive = True

    for step in sequenceON:
        for index in step['positionColour']:
            strip.setPixelColor(index['position'], getColor(index['colour']))
        if controlSettings["state"] != "sensor":
            animationactive = False
            return
        strip.show()
        time.sleep(animation['pause']/1000.0)
    time.sleep(animation['onTime'])

    for step in sequenceOFF:
        for index in step['positionColour']:
            strip.setPixelColor(index['position'], getColor(index['colour']))
        if controlSettings["state"] != "sensor":
            animationactive = False
            return
        strip.show()
        time.sleep(animation['pause']/1000.0)
    animationactive = False


initiateStrip()
start_server(host, port)

