let

   qname="abs"

   b=rand(4:10)//3
   alak=replace(raw"""
   f(x)=
   \begin{cases}
   A|x|  & \text{ha } |x|<__b \\
   0             & \text{ máskor }
   \end{cases}
   """, [
      "__b", toS(b)
      ]
   )

   A=1//(b^2)
   jv=toS(A)
   rv1=toS(A+1//2)
   rv2=toS(A+1//3)
   rv3=toS(A+1//4)

qText=replace(raw"""
\begin{multi}{abssfv}
Egy $X$ valségi változó sűrűségfüggvénye:
$$ __ALAK $$ alakú valamely $A$ számra.
Ekkor $A=$
\item* $__JV$
\item $__RV1$
\item $__RV2$
\item $__RV3$
\end{multi}
""",[
   "__QNAME",qname,
   "__ALAK",alak,
   "__JV",jv,
   "__RV1",rv1,
   "__RV2",rv2,
   "__RV3",rv3
])

   print(_out,qText)


   #######################



   alak=replace(raw"""
   f(x)=
   \begin{cases}
   __A|x|  & \text{ha } |x|<__b \\
   0             & \text{ máskor }
   \end{cases}
   """, [
      "__b", toS(b),
      "__A",toS(A)
      ]
   )

   jv=toS(0)
   rv1=toS(1//2)
   rv2=toS(1//3)
   rv3=toS(1//4)

   qText=replace(raw"""
   \begin{multi}{absvarhato}
   Egy $X$ valségi változó sűrűségfüggvénye:
   $$ __ALAK $$ alakú. Ekkor $ E(X)= $
   \item* $__JV$
   \item $__RV1$
   \item $__RV2$
   \item $__RV3$
   \end{multi}
   """,[
      "__QNAME",qname,
      "__ALAK",alak,
      "__JV",jv,
      "__RV1",rv1,
      "__RV2",rv2,
      "__RV3",rv3
   ])

      print(_out,qText)


      #######################



      alak=replace(raw"""
      f(x)=
      \begin{cases}
      __A|x|  & \text{ha } |x|<__b \\
      0             & \text{ máskor }
      \end{cases}
      """, [
         "__b", toS(b),
         "__A",toS(A)
         ]
      )

      jv=toS((b^2)//2)
      rv1=toS(b^2)
      rv2=toS(2*b^2)
      rv3=toS(b//2)

      qText=replace(raw"""
      \begin{multi}{absszoras}
      Egy $X$ valségi változó sűrűségfüggvénye:
      $$ __ALAK $$ alakú. Ekkor $ D^{2}(X)= $
      \item* $__JV$
      \item $__RV1$
      \item $__RV2$
      \item $__RV3$
      \end{multi}
      """,[
         "__QNAME",qname,
         "__ALAK",alak,
         "__JV",jv,
         "__RV1",rv1,
         "__RV2",rv2,
         "__RV3",rv3
      ])

         print(_out,qText)



end
