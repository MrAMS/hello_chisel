import chisel3._
import chisel3.util._

class Hello extends Module {
    val io = IO(new Bundle {
        val sw  = Input( UInt(16.W) )
        val segr = Output( Vec(8, UInt (8.W)) )
        val ledr = Output( UInt(16.W) )
    })
    io.ledr := io.sw
    val seg = VecInit(Seq.fill(8)("b11111111".U(8.W)))
    for( i <- 0 until 16/4) {
        switch(io.sw((i+1)*4-1, i*4)) {
            is (0.U)  { seg(i) := "b00000010".U }
            is (1.U)  { seg(i) := "b10011111".U }
            is (2.U)  { seg(i) := "b00100101".U }
            is (3.U)  { seg(i) := "b00001101".U }
            is (4.U)  { seg(i) := "b10011001".U }
            is (5.U)  { seg(i) := "b01001001".U }
            is (6.U)  { seg(i) := "b01000001".U }
            is (7.U)  { seg(i) := "b00011111".U }
            is (8.U)  { seg(i) := "b00000001".U }
            is (9.U)  { seg(i) := "b00001001".U }
            is (10.U) { seg(i) := "b00010001".U }
            is (11.U) { seg(i) := "b11000001".U }
            is (12.U) { seg(i) := "b01100011".U }
            is (13.U) { seg(i) := "b10001001".U }
            is (14.U) { seg(i) := "b01100001".U }
            is (15.U) { seg(i) := "b01110001".U }
        }
    }
    io.segr := seg
}

object Hello extends App {
    emitVerilog(new Hello(), Array("--target-dir", "generated"))
}

