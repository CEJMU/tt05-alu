from machine import Pin
from ttboard.mode import RPMode
from ttboard.demoboard import DemoBoard
import time

# Get Board:
tt = DemoBoard()

# Enable our project:
tt.shuttle.tt_um_cejmu.enable()

tt.uio0.mode = Pin.OUT
tt.uio1.mode = Pin.OUT
tt.uio2.mode = Pin.OUT

# TEST: Ripple Carry Adder
#tt.bidir_byte = 0b00000000

# TEST: Carry Lookahead Adder
#tt.bidir_byte = 0b00000001

# TEST: Matrix Multiplier
tt.bidir_byte = 0b00000010

# TEST: Walles Multiplier
#tt.bidir_byte = 0b00000011

time.sleep(3)


#input("Press Enter to continue...")

# Adder:
counter = 0
while True :
    counter = counter + 1
    if counter % 2:
        tt.input_byte = 0b11110000
    else :
        #tt.input_byte = 0b11110001
        # Multiplier:
        tt.input_byte = 0b11111111
    time.sleep(0.25)


print("DONE")

