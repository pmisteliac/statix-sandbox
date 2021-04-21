type Ppiont = { x : Int, y : Int }

def p = Ppiont{x = 0, y = 0}

def mkPoint = fun(x) fun(y) Ppiont{y = 1, x = x} 

def addX = fun(p: Ppiont) fun(q: Ppiont) 
  Ppiont{ x = p.x + q.x, y = p.y + q.y } 
  
def q = addX p Ppiont{x = 1, y = 3}//, y = true}   

//def z = Point{x = 1}

$ let o = 4; b = 4 in o + with q do x + y + b 
          
record Liste { hd : Int, tl : Liste } 

def nil = null
def consz = fun(x) fun(xs: Liste) 
  Liste{hd = x, tl = xs}

def map = fun(f) fun(xs: Liste) 
  if xs == null then null else consz(f xs.hd)(map f xs.tl)
  
$ map (fun(x) x + 1) (consz 1 (consz 2 null))    