let
    qname=""

    a1=
    a2=

    jv=
    rv1=
    rv2=
    rv3=

    print(_out,"""
    \\begin{multi}{$(qname)}
    ... $(a1) .... $(a2).
    \\item* $(jv)
    \\item  $(rv1)
    \\item  $(rv2)
    \\item  $(rv3)
    \\end{multi}
    """)
end
