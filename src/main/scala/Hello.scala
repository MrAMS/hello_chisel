import chisel3._
import chisel3.util._


class Hello extends Module {
    val io = IO(new Bundle {
        val sw  = Input( UInt(16.W) )
        val segr = Output( Vec(8, UInt (8.W)) )
        val ledr = Output( UInt(16.W) )
    })
    def getSegmentSignal(num: UInt) = {
        val seg = WireDefault("b11111111".U(8.W))
        switch(num) {
            is (0.U)  { seg := "b00000010".U }
            is (1.U)  { seg := "b10011111".U }
            is (2.U)  { seg := "b00100101".U }
            is (3.U)  { seg := "b00001101".U }
            is (4.U)  { seg := "b10011001".U }
            is (5.U)  { seg := "b01001001".U }
            is (6.U)  { seg := "b01000001".U }
            is (7.U)  { seg := "b00011111".U }
            is (8.U)  { seg := "b00000001".U }
            is (9.U)  { seg := "b00001001".U }
            is (10.U) { seg := "b00010001".U }
            is (11.U) { seg := "b11000001".U }
            is (12.U) { seg := "b01100011".U }
            is (13.U) { seg := "b10001001".U }
            is (14.U) { seg := "b01100001".U }
            is (15.U) { seg := "b01110001".U }
        }
        seg
    }

    io.ledr := io.sw

    // a counter count from n-1 to -1 (n times)
    def genNerdCounter(n: Int) = {
        val len = signedBitLength(n-1)
        val maxVal = (n-1).S(len.W)
        val cntReg = RegInit(maxVal)
        cntReg := Mux(cntReg(len-1), maxVal, cntReg-1.S)
        cntReg(len-1)
    }
    val counter = genNerdCounter(10000)
    val numReg = RegInit(0.U(16.W))
    when(counter) {
        numReg := numReg + 1.U
    }

    for( i <- 0 until 8) {
        if(i < 4) {
            io.segr(i) := getSegmentSignal(io.sw((i+1)*4-1, i*4))
        }else{
            val j = i-4;
            io.segr(i) := getSegmentSignal(numReg((j+1)*4-1, j*4))
        }
    }
}

object Hello extends App {
    emitVerilog(new Hello(), Array("--target-dir", "generated"))
}

