# használat:
# julia mulchoice.jl gyűjtemény outname
# gyűjtemény/config.jl -> mdict=[f1,f2,...]
# legenerálja az f1.tex,f2.tex... -> tex
# a tex alkonyvtarbol osszeallitja az output/outname.tex
# vegul pdflatex

include("include/lib.jl")
include("include/makro.jl")

mdir=split(ARGS[1],"/")[1]
include(mdir*"/config.jl")
moutname=strip(ARGS[2])

include("include/tex.jl")
# a makró-problémák miatt ez nem a végleges fout
# (kifejtem az egyszerű makrókat)
fout=open("output/"*"_"*moutname*".tex","w")
print(fout,docpre)
print(fout,replace(quizpre,"mquizname"=>mquizname)) # quizname -> config.jl

for ex in mdict
  xxx=include(join([mdir,ex,"prob.jl"],"/"))
  print(fout,xxx)
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

