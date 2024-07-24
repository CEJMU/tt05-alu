from machine import Pin
from ttboard.mode import RPMode
from ttboard.demoboard import DemoBoard

# Get Board:
tt = DemoBoard()

# Enable our project:
tt.shuttle.tt_um_cejmu.enable()

# Enable InputsL
#enable_ui_in(True)

tt.uio0.mode = Pin.OUT
tt.uio1.mode = Pin.OUT
tt.uio2.mode = Pin.OUT

# TEST: Ripple Carry Adder

tt.bidir_byte = 0b00000000

print ("TEST: Ripple Carry ...",end=" ")
for a in range(0,16) :
    for b in range(0,16) :
        value = ((b*16) + a)
        tt.input_byte = value

        result = tt.output_byte
        if (result != (a+b)) :
            print("ERROR: {}+{}={} <-> {}".format(a,b,a+b,result))

print("DONE")
            
# TEST: Carry Lookahead Adder

tt.bidir_byte = 0b00000001

print ("TEST: Carry Lookahead ...",end=" ")
for a in range(0,16) :
    for b in range(0,16) :
        value = ((b*16) + a)
        tt.input_byte = value

        result = tt.output_byte
        if (result != (a+b)) :
            print("ERROR: {}+{}={} <-> {}".format(a,b,a+b,result))

print("DONE")

# TEST: Matrix Multiplier

tt.bidir_byte = 0b00000010

print ("TEST: Matrix Multiplier ...",end=" ")
for a in range(0,16) :
    for b in range(0,16) :
        value = ((b*16) + a)
        tt.input_byte = value

        result = tt.output_byte
        if (result != (a*b)) :
            print("ERROR: {}*{}={} <-> {}".format(a,b,a*b,result))


print("DONE")

# TEST: Walles Tree Multiplier

tt.bidir_byte = 0b00000011

print ("TEST: Walles Tree Multiplier ...",end=" ")
for a in range(0,16) :
    for b in range(0,16) :
        value = ((b*16) + a)
        tt.input_byte = value

        result = tt.output_byte
        if (result != (a*b)) :
            print("ERROR: {}*{}={} <-> {}".format(a,b,a*b,result))


print("DONE")

# TEST: Comperator

tt.bidir_byte = 0b00000100

print ("TEST: Comperator ...",end=" ")
for a in range(0,16) :
    for b in range(0,16) :
        value = ((b*16) + a)
        tt.input_byte = value

        result = tt.output_byte

        if(a > b) :
            if (result != 0b00000001) :
                print("\nERROR: {}>{} <-> {}".format(a,b,result))
        elif (a < b) :
            if (result != 0b00000010) :
                print("\nERROR: {}<{} <-> {}".format(a,b,result))
        elif (a == b) :
            if (result != 0b00000100) :
                print("\nERROR: {}=={} <-> {}".format(a,b,result))
              
print("DONE")


# TEST: Shifter

tt.bidir_byte = 0b00000101

print ("TEST: Shifter ...",end=" ")
for a in range(0,16) :

    # Dont shift:
    b = 0b00000000
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != a) :
        print("\nERROR: Shifting")

    # Shift right by 1
    b = 0b00000001
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != (int(a/2))) :
        print("\nERROR: Shifting")

    # Shift right by 2
    b = 0b00000010
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != (int(a/4))) :
        print("\nERROR: Shifting")

    # Shift right by 3
    b = 0b00000011
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != (int(a/8))) :
        print("\nERROR: Shifting")

    # Shift left by 1
    b = 0b00000101
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != ((a*2)&0b00001111)) :
        print("\nERROR: Shifting")

    # Shift left by 2
    b = 0b00000110
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != ((a*4)&0b00001111)) :
        print("\nERROR: Shifting")

    # Shift left by 3
    b = 0b00000111
    value = ((b*16) + a)
    tt.input_byte = value
    result = tt.output_byte
    if(result != ((a*8)&0b00001111)) :
        print("\nERROR: Shifting")
        
              
print("DONE")

