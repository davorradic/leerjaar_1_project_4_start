import time
from microbit import *
import os
make_file = open('log.csv', 'w')
top = str('temperatuur,tijd,grondvochtigheid\r\n')
make_file.write(top)
make_file.close()

while True:

    read_my_file = open('log.csv', 'r')
    old_file = str(read_my_file.read())
    my_file = open('log.csv', 'w')
    # https://microbit-micropython.readthedocs.io/en/latest/microbit_micropython_api.html #running_time()
    content = str(old_file) + str(temperature()) + '\r\n' # uitbreiden met tijd en grondvochtigheid
    my_file.write(content)
    my_file.close()
    # time should be in milliseconds, but as I can see it is in seconds
    time.sleep(10)

