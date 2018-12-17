include("_include/common.jl")

_out=open("_output/out.tex","w")
include("_include/algo/pre.tex")

println("1: ",ARGS[1])
#println("2: ",ARGS[2])


_target=ARGS[1]
# println("arg1:",_target)
#_target=_target*"/"*ARGS[2]
# println("input:",_target)

include(_target)

include("_include/algo/post.tex")
close(_out)

# shell
run(`pdflatex -output-directory _output out.tex`)

#run(`mv _output/out.pdf $_input.pdf`)
