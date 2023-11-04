import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles


@cocotb.test()
async def test_ripple_carry(dut):
    dut._log.info("start ripple carry test")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # reset dut._log.info("reset")
    dut.rst_n.value = 0
    # set the compare value
    dut.uio_in.value = 0
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 2)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        sum = int(a, base=2) + int(b, base=2)
        assert (dut.uo_out.value == sum)


@cocotb.test()
async def test_cla(dut):
    dut._log.info("start ripple carry test")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # reset dut._log.info("reset")
    dut.rst_n.value = 0
    # set the compare value
    dut.uio_in.value = 1
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 1)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        sum = int(a, base=2) + int(b, base=2)
        assert (dut.uo_out.value == sum)


@cocotb.test()
async def test_matrix(dut):
    dut._log.info("start matrix multiplication test")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Testing matrix")
    dut.uio_in.value = 2
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 1)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        mul = int(a, base=2) * int(b, base=2)
        assert (dut.uo_out.value == mul)


@cocotb.test()
async def test_wallace(dut):
    dut._log.info("start wallace tree test")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Testing MUL")
    dut.uio_in.value = 3
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 1)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        mul = int(a, base=2) * int(b, base=2)
        assert (dut.uo_out.value == mul)

@cocotb.test()
async def test_comparator(dut):
    dut._log.info("start comparator test")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Testing Compare")
    dut.uio_in.value = 4
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 1)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]

        
        #dut._log.info(dut.uo.value)


        if int(a, base=2) > int(b, base=2):
            assert (dut.uo_out.value == 1)
        elif int(a, base=2) < int(b, base=2):
            assert (dut.uo_out.value == 2)
        elif int(a, base=2) == int(b, base=2):
            assert (dut.uo_out.value == 4)
