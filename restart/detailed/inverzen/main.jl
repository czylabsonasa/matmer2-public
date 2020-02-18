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


  (n,n)=size(A)
  B=zeros(Int,n,n)
  for i in 1:n
    B[i,i]=1
  end
  B//=1

  println(_out,"Inverse computing")
  println(_out,raw"$$ A="*tstring(tstring.(A))*raw"$$")


  println(_out,raw"$$"*tstring(tstring.(A))*tstring(tstring.(B))*raw"$$")

  sing=false
  for i in 1:n
    println(_out,raw"\par\noindent ", i,". phase\n")
    if A[i,i]==0
        println(_out,"the pivot element is 0,")
        println(_out,"find below it a non-zero one.\n")
        k=0
        for j=(i+1):n
          if A[j,i]!=0
              k=j
              break
          end
        end
        if k==0
          println(_out,"no nonzero element below,\n")
          println(_out,"matrix is singular, there is no inverse\n")
          break
        end

        println(_out,"choosing the ",k,". row -> swapping ")
        A[[i,k],:]=A[[k,i],:]
        B[[i,k],:]=B[[k,i],:]
        d=1-d
    end

    for j=(i+1):n
        if A[j,i]!=0
          println(_out,
          "subtract "*raw"$"*tstring(A[j,i]//A[i,i])*raw"$"*" times the $(i). row from the $(j). row")          

          #"levonom a(z) ",i,". sor ",raw"$"*tstring(A[j,i]//A[i,i])*raw"$"," -szeresét a(z) ",j,". sorból" )
          l=A[j,i]//A[i,i]
          A[j,:]-=l*A[i,:]
          B[j,:]-=l*B[i,:]
          println(_out,raw"$$"*tstring(tstring.(A))*tstring(tstring.(B))*raw"$$")
        else
        end
    end
    println(_out,raw"\par\noindent done..."*"\n\n")
  end

  if sing==false
    println(_out,raw"\par\noindent Backward elimination"*"\n\n")
    for i=n:-1:1
      println(_out,"normalize and eliminate with the ($(i),$(i))-element")
      #println(i," ",n)
      l=A[i,i]
      if l!=1 
        A[i,:]=A[i,:]//l
        B[i,:]=B[i,:]//l
      end
      println(_out,raw"$$"*tstring(tstring.(A))*tstring(tstring.(B))*raw"$$")

      volt=false
      for j=(i-1):-1:1
        if A[j,i]==0
            continue
        end
        l=A[j,i]//A[i,i]
        A[j,:]-=l*A[i,:]
        B[j,:]-=l*B[i,:]
        volt=true
      end
      if volt==true
        println(_out,raw"$$"*tstring(tstring.(A))*tstring(tstring.(B))*raw"$$")
      end
      println(_out,raw"\par\noindent done..."*"\n\n")

    end
    println(_out,raw"$$ A^{-1}="*tstring(tstring.(B))*raw"$$")
  else # sing
    println(_out,raw"$$ A^{-1} does not exist $$")
  end


  println(_out,docpost)
  close(_out)


end
