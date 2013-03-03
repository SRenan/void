library(grid)

lines<-readLines("text.txt")
mots<-unlist(strsplit(lines, split=" "))
mots<-mots[mots!=""]

lenTxt<-length(mots)
wpp<-2
wpm<-240
pause<-60/wpm*wpp

#for(i in 1:lenTxt){
i<-1
while(i <= lenTxt+1){
  grid.newpage()
  grid.text(x=0.1, y=0.1, i)
  grid.text(paste(mots[i:(i+wpp-1)], collapse=" "), gp=gpar(cex=2))
  grid.text(x=0.9, y=0.9, i+wpp)
  Sys.sleep(pause)
  i<-i+wpp
}
