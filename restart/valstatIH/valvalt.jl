valvalt=(
(
body=raw"""
Egy valségi változónak mindig van várható értéke.
""",
answer=false,
fb=raw"{Nem. Lásd definíció.}"
)
,
(
body=raw"""
Ha egy valségi változónak létezik a várható értéke, akkor fel is veszi azt.
""",
answer=false,
fb=raw"{Pl. szabályos kockadobás.}"
)
,
(
body=raw"""
Ha egy valségi változónak létezik a várható értéke, akkor nem biztos hogy fel is veszi azt.
""",
answer=true,
fb=raw"{Pl. szabályos kockadobás.}"
)
,
(
body=raw"""
Ha egy valségi változónak létezik a szórása, akkor az értékei a várható érték körüli 
szórás sugarú intervallumba esnek.
""",
answer=false,
fb=raw"{Pl. a sztenderd normális akármilyen nagy értéket felvehet.}"
)
,
(
body=raw"""
Ha egy valségi változónak létezik a szórása, akkor az mindig kisebb mint a várható értéke.
""",
answer=false,
fb=raw"{Pl. normális akármilyen paraméterekkel megadható.}"
)
,
(
body=raw"""
Egy $\xi$ valségi változó és a sztenderdizáltja eloszlása ugyanabba a családba esik,
ha létezik a szórás.
""",
answer=false,
fb=raw"{Pl. exponenciális.}"
)
,
(
body=raw"""
Van olyan valségi változó, hogy az ő és a sztenderdizáltja eloszlása 
ugyanabba a családba esik.
""",
answer=true,
fb=raw"{Pl. egyenletes, normális.}"
)




)
