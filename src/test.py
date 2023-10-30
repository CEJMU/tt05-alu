import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles


@cocotb.test()
async def test_adder(dut):
    max_count = 100

    dut._log.info("start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # reset
    dut._log.info("reset")
    dut.rst_n.value = 0
    # set the compare value
    dut._log.info("Testing ADD")
    dut.uio_in.value = 0
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 10)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        sum = int(a, base=2) + int(b, base=2)
        assert (dut.uo_out.value == sum)

    dut._log.info("Testing MUL")
    dut.uio_in.value = 1
    for i in range(256):
        dut._log.info(f"Testing input {i}")
        dut.ui_in.value = i
        await ClockCycles(dut.clk, 10)
        binary = bin(i)[2:].zfill(8)
        a = binary[4:]
        b = binary[0:4]
        mul = int(a, base=2) * int(b, base=2)
        assert (dut.uo_out.value == mul)
