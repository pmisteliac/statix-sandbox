module Module10 {

module Types {
  type Alp = Int
  def a = 1 + b 
  def b = 3
}

module TypesB {
  import Types
  $ Types.a 
  type B = Types.Alp
}

module Module03a {
  def a = 1
  module ABC{ }
}

module Module03z {
  import Module03a
  import Module03a.ABC
}

  module A { 
    module B {
      def a = 1
      def b = a
    }
  }
   
  module C { 
    import A; 
    import B    
    def b = a + 1
  } 
  
  module alpha {
  def a = 1
	}

	module bravo {
	  import alpha;
	  def b = a
	}
	
	module charlie {
	  import alpha;
	  def foo = 10;
	  def b = a
	}
	
  module H {
    def a = true;
    def a = 3;
    def aljd  = 5
  } 
   
  module E { 
    def bcd = 1
    module E {  
      import H;
      def lsajd = 4;
      def f = 1 
    }
  }
  
  module G { 
    import E;
    import E
    def g = f + a + bcd
  }
  
    module Even {
    import Odd
    def even = fun(x)             
         if x == 0 then true else odd(x - 1)        
  }
  
  module Odd {
    import Even
    def odd = fun(x) 
          if x == 0 then false else even(x - 1)       
  }

  module Compute {
    type Result = { input : Int, output : Bool }
    def compute = fun(x)  
           Result{ input = x, output = Odd.odd x }       
  }
  
  module Application {
  
  import Library.Even 
  //def alias = Library  // error

  $ even 42
  $ Library.Odd.odd 45  
}

}