include("include/julia.jl")

mdir=split(ARGS[1],"/")[1]
include(mdir*"/filter.jl")
fname=strip(ARGS[2])

include("include/tex.jl")
fout=open("output/"*fname*".tex","w")
print(fout,docpre)
print(fout,replace(quizpre,"mquizname"=>mquizname))


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
      tmp=replace(tfpre,"mtfname"=>mkey*string(i)) 
      tmp*=marr[i][1]*tfdict[marr[i][2]]*tfpost
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


if length(msample)>0
   println(stderr,length(msample)," feladat")
   # shell
   mcmd="pdflatex"
   # arg0="-quiet" no such option
   arg0="-interaction=batchmode" # almost quit pdflatex
   arg1= "-output-directory=output" 
   arg2="$(fname).tex"
   #run(`$(mcmd) $(arg0) $(arg1) $(arg2)`)
   run(`$(mcmd) $(arg1) $(arg2)`)
else
   println(stderr,"empty file")
end