##### diagonal test, right (ascending)
boardsize 19
play b a1
play b b2
00 gogui-rules_final_result
#?[unknown]
play b c3
play b d4
10 gogui-rules_final_result
#?[unknown]
play b e5
20 gogui-rules_final_result
#?[black]
21 genmove w
#?[resign]

##### diagonal test, left (descending)
boardsize 18
30 gogui-rules_final_result
#?[unknown]
play w e1
play w d2
40 gogui-rules_final_result
#?[unknown]
play w c3
play w b4
50 gogui-rules_final_result
#?[unknown]
play w a5
60 gogui-rules_final_result
#?[white]
61 genmove b
#?[resign]

##### horizontal test
boardsize 17
70 gogui-rules_final_result
#?[unknown]
play w d15
play w e15
play w f15
80 gogui-rules_final_result
#?[unknown]
play w g15
play w h15
90 gogui-rules_final_result
#?[white]

##### vertical test
boardsize 16
100 gogui-rules_final_result
#?[unknown]
play b j4
play b j5
play b j6
110 gogui-rules_final_result
#?[unknown]
play b j7
play b j8
120 gogui-rules_final_result
#?[black]

boardsize 5
130 gogui-rules_final_result
#?[unknown]
play b a1
play b a2
play w a3
play w a4
play b a5
play w b1
play w b2
play b b3
play b b4
play w b5
play w c3
play b c2
140 gogui-rules_final_result
#?[unknown]
genmove w
genmove b
genmove w
150 gogui-rules_final_result
#?[unknown]
genmove b
genmove w
genmove b
genmove w
160 gogui-rules_final_result
#?[unknown]
genmove b
genmove w
genmove b
genmove w
170 gogui-rules_final_result
#?[unknown]
genmove b
180 gogui-rules_final_result
#?[unknown]
genmove w
190 gogui-rules_final_result
#?[draw]
200 genmove w
#?[pass]
210 genmove b
#?[pass]

boardsize 10
220 gogui-rules_legal_moves
#? [a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10 k1 k2 k3 k4 k5 k6 k7 k8 k9 k10]

##### test hopeful winners
boardsize 10
play w a1
play w b2
play w c3
play w e5
230 gogui-rules_final_result
#?[unknown]
play w f6
play w g7
play w h8
play w k10
240 gogui-rules_final_result
#?[unknown]
play b d4
play b j9
250 gogui-rules_final_result
#?[unknown]
play w d5
play w c5
play w b5
play b a5
260 gogui-rules_final_result
#?[unknown]
play w b6
play w b7
play w b8
play w b10
270 gogui-rules_final_result
#?[unknown]
play w j1
play w j2
play w j3
play w j4
play w h1
play w h2
play w h3
play w h4
play w g1
play w g2
play w g3
play w g4
play w k1
play w k2
play w k3
play w k4
280 gogui-rules_final_result
#?[unknown]
gogui-rules_board