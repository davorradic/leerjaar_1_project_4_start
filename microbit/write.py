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


