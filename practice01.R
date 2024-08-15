# 1から20までの整数。1:20 でも同じ
seq(from =  1, to = 20, by = 1)
# 1から19までの奇数
seq(from = 11, to = 20, by = 2)
# 2から20までの偶数
seq(from =  2, to = 20, by = 2)
# 降順、間隔は5
seq(from = 20, to = 1, by = -5)
# 最小値が1、最大値が100で、長さが10のベクトル
seq(from = 1, to = 100, length.out = 10)
# 73から1つずつ数が小さくなる長さが10のベクトル
seq(from = 73, by = -1, length.out = 8)
21:30  # 21 から30までの整数
10:1   # 10 から1までの整数（降順）
# 3が10個のベクトル
rep(3, times = 10)
# aが3つ, bが1つ, cが2つのベクトル
rep(c('a', 'b', 'c'), times = c(3, 1, 2))
# C, A, T を2つずつ
rep(c('C', 'A', 'T'), each = 2)
LETTERS  # 大文字
letters  # 小文字
# numeric_vec1の5番目の要素を抽出
numeric_vec1[5]
# numeric_vec1の2, 4, 6番目の要素を抽出
numeric_vec1[c(2, 4, 6)]
# numeric_vec1の1番目と4番目「以外」の要素を抽出
numeric_vec1[-c(1, 4)]
# numeric_vec1の5番目から7番目の要素を抽出
numeric_vec1[5:7]
numeric_vec2 <- 1:20
# numeric_vec2 の奇数番目の要素を抽出
numeric_vec2[seq(1, 20, by = 2)]
character_vec <- c('cat', 'cheetah', 'lion',  'tiger')
character_vec
character_vec[c(TRUE, FALSE, TRUE, TRUE)]
(numeric_vec1 %% 2) == 0  # 偶数かどうかの判定
numeric_vec1[(numeric_vec1 %% 2) == 0]
numeric_vec1[2] <- 100
numeric_vec1
numeric_vec1[(numeric_vec1 %% 2) == 0] <- 0
numeric_vec1
numeric_vec1[(numeric_vec1 %% 2) == 0] <- 0
numeric_vec1
numeric_vec1[2] <-  100
numeric_vec1
numeric_vec1[(numeric_vec1 %% 2) == 0] <- 0
numeric_vec1
