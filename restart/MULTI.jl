# használat:
# julia MULTI.jl gyűjtemény outname [config.jl]
# gyűjtemény/config.jl -> mdict=[f1,f2,...]
# legenerálja az f1.tex,f2.tex... -> tex
# a tex alkonyvtarbol osszeallitja az output/outname.tex
# vegul pdflatex

include("include/lib.jl")
include("include/makro.jl")

mdir=split(ARGS[1],"/")[1]

mconfig="config.jl"
(length(ARGS)>2)&&((mconfig=strip(ARGS[3])*".jl"))

include(mdir*"/"*mconfig)

moutname=strip(ARGS[2])

include("include/tex.jl")
# a makró-problémák miatt ez nem a végleges fout
# (kifejtem az egyszerű makrókat)
fout=open("output/"*"_"*moutname*".tex","w")
print(fout,docpre)
print(fout,replace(quizpre,"mquizname"=>mquizname)) # quizname -> config.jl

kiir(mex)=print(fout,include(join([mdir,mex,"prob.jl"],"/")))
for ex in mdict
  if typeof(ex)==String
    kiir(ex)
  else
    nex=ex[1] #it is a must
    (nex==0)&&continue
    sel=ex[2:end]
    if nex>0 sel=sample(sel,nex,replace=false) end
    kiir.(sel)
  end
end

print(fout,quizpost)
print(fout,docpost)
close(fout)


# a macrokat nem kezelte jol a latex-moodle-xml 
fout=open("output/"*moutname*".tex","w")
for s=eachline("output/"*"_"*moutname*".tex")
  println(fout,kifejt(s))
end
close(fout)


# shell
mcmd="pdflatex"
# arg0="-quiet" no such option
arg0="-interaction=batchmode" # almost quiet pdflatex
arg1= "-output-directory=output" 
arg2="$(moutname).tex"
#run(`$(mcmd) $(arg0) $(arg1) $(arg2)`)
run(`$(mcmd) $(arg1) $(arg2)`)

