module failure {
 
  module A {
    def a = 1;
    def a = 3
    def b = 2;
    def c = 3 + a + b
    def foo = 1  
  } 
  
  module B {
    import A
    def a = 4 + a
    def e = a + 5;
    import D;
    def d = pop + b + c
  }
  
  module C {
    import B;
    def e = pop
  } 
  
  module D {
    def pop = 6  
  }  

} 