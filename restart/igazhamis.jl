# más mint a quiz.jl
# csak igaz hamis tesztek
# használat: 
# julia igazhamis.jl gyujtemény outputnév
# a gyújtemény könyvtárban levő config.jl-ben van
# egy mdict mely a kiválasztandó feladatokról tartamaz infót
# a kiválasztandó feladatok a xxx.jl fájlokban vannak, mind egy xxx nevű
# vektort tartalmaz a leírással, megoldással.

using StatsBase, Random
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


msample=[] # all of them
for (mkey,mval) in mdict
   #println(stderr,mkey,"\n",mval)
   nsamp=mval[1]
   marr=mval[2] # the actual collection
   n=length(marr)
   (nsamp==0)&&continue
   (nsamp<0)&&(nsamp=n)
   #println(stderr,n," ",nsamp)
   for i in sample(1:n,nsamp,replace=false)
      akt=marr[i]
      tmp=replace(tfpreFB,"mtfname"=>mkey*string(i)) # true-false name
      tmp=replace(tmp,"_FB"=>akt.fb) 
      tmp*=akt.body*tfdict[akt.answer]
      tmp*=tfpost
      push!(msample,tmp)
   end
end
shuffle!(msample)
for v in msample
   print(fout,v)
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


if length(msample)>0
   println(stderr,length(msample)," feladat")
   # shell
   mcmd="pdflatex"
   # arg0="-quiet" no such option
   arg0="-interaction=batchmode" # almost quiet pdflatex
   arg1= "-output-directory=output" 
   arg2="$(moutname).tex"
   #run(`$(mcmd) $(arg0) $(arg1) $(arg2)`)
   run(`$(mcmd) $(arg1) $(arg2)`)
else
   println(stderr,"empty file")
end
