let
  include("../include/lib.jl")
  include("../include/tex.jl")

  using DelimitedFiles

  if length(ARGS)==0 
    println(stderr,"no input file. quit.")
    exit(0)
  end

  _input=ARGS[1]
  _inp=open(_input,"r")
  A=readdlm(_inp,Int)//1
  close(_inp)

  _output=_input
  if length(ARGS)>1 _output=ARGS[2] end
  _out=open(_output*".tex","w")

  println(_out,docpre0)

  ## munka




  println(_out,docpost)
  close(_out)
end