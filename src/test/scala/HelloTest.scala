import chiseltest._
import chisel3._
import org.scalatest.flatspec.AnyFlatSpec

class HelloTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Hello"
  it should "pass" in {
    test(new Hello) { dut =>
      /* TEST FOR INPUT 0 */
      dut.io.sw.poke(0.U(16.W))
      dut.io.ledr.expect(0.U)
      for( i <- 0 until 4){
        dut.io.segr(i).expect("b00000010".U(8.W))
      }
      for( i <- 4 until 8){
        dut.io.segr(i).expect("hFF".U(8.W))
      }
      /* TEST FOR INPUT 3 */
      dut.io.sw.poke(3.U(16.W))
      dut.io.ledr.expect(3.U)
      dut.io.segr(0).expect("b00001101".U(8.W))
      for( i <- 1 until 4){
        dut.io.segr(i).expect("b00000010".U(8.W))
      }
      for( i <- 4 until 8){
        dut.io.segr(i).expect("hFF".U(8.W))
      }
      /* MORE TEST ... */
    }
  }
}
