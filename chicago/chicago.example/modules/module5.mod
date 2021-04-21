module Module8 {

module A{
  import B
  def a = 1
}
module B {
  import C
  def c = 3
}
module C {
  module B {
    def c = 4
  }
  def c = 6
}
def o = 5
 
}   