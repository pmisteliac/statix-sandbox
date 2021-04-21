module Module2 {

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

}