getwd()

#Semester Dataの整形
#1. 生データの読み込み
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/semester_dummy/semester_data_1.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/semester_dummy/semester_data_2.csv")
data01 <- read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/semester_dummy/semester_data_1.csv")
data02 <- read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/semester_dummy/semester_data_2.csv")

#2.data01の一行目を列名にする
colnames(data01) <- data01[1,]
data01 <- data01[-1,]
data01
data02

#3.データの結合
colnames(data02) <- c("unitid", "instnm", "semester", "quarter", "year", "Y")

#処理後の結果を反映
print(colnames(data02))

#型を揃えたうえで結合
print(.packages())
pacman::p_load("dplyr")
ls("package:dplyr")
data_c <- rbind(data01, data02)
data_c

#4.Y列の削除
data_del <- subset(data_c, select = -Y)
data_del

#5.semester制が導入された年の列の作成
data_del_ver.2 <- data_del %>% dplyr::filter(semester == 1)
data_semes_introduce_Y <- data_del_ver.2[ ! duplicated(data_del_ver.2[c('semester', 'unitid')]),]
data_semes_introduce_Y <- subset(data_semes_introduce_Y, select = c(-semester, -quarter))


#6.semester制導入後を示すダミー変数
data_semester_with_dummy <- subset(data_del, select = -quarter)


#Graduate Dataの整形
#1. 生データの読み込み
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1991.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1992.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1993.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1995.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1996.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1997.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1998.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/1999.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2000.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2001.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2002.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2003.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2004.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2005.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2006.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2007.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2008.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2009.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2010.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2011.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2012.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2013.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2014.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2015.csv")
read.csv("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/outcome/2016.csv")

#データの結合
data03 <- rbind(1991, 1992, 1993, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016)
data03

#女子学生の4年失業率を0から1のスケールに変更
install.packages("dplyr")
library("dplyr")
print(.packages())
str(data03)
data03 <- data %>% 
  mutate(m_4yrgrads_ratio = m_4yrgrads*0.01)



#ovariatesDataの整形
#生データの読み込み
getwd()
data04 <-readxl::read_excel("C:/Users/daiki/OneDrive/ドキュメント/ra-bootcamp-warmup/01_data/raw/covariates/covariates.xlsx")
data04

#列名university_ud'を'unitid'に変更
data04 <- dplyr::rename(data04, unitid = university_id)
data04

#unitidの文字列"aaaa"削除
data04["unitid"] <- lapply(data04["unitid"], gsub, pattern="aaaa", replacement = "")
data04

#wide型に変更
install.packages("tidyr")
library("tidyr")
data04 <- data04 %>% 
  pivot_wider(
    names_from = category, 
    values_from = value
    )

#

