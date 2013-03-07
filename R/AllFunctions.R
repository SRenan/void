#@text a vector of char
#@wpm: words/min
#@wpi: words/img
spr<-function(text, wpm=120, wpi=2){
  len<-length(text)
  pause<-60/wpm*wpi
  occ<-floor(len/wpi)-1
  extra<-len%%wpi

  for(i in 0:occ){
    start<-i*wpi+1
    end<-start+wpi-1
    grid.newpage()
    grid.text(x=0.1, y=0.1, paste0(end,"/",len))#+wpi-1,"/",len))
    grid.text(paste(text[start:end], collapse=" "), gp=gpar(cex=2))
    Sys.sleep(pause)
  }
  #Print whatever is left
  grid.newpage()
  grid.text(x=0.1, y=0.1, paste0(len,"/",len))#+wpi-1,"/",len))
  grid.text(paste(text[(len-extra+1):len], collapse=" "), gp=gpar(cex=2))
  Sys.sleep(pause)
}

parseTxt<-function(file){
  lines<-readLines(file)
  mots<-unlist(strsplit(lines))
  mots<-mots[mots!=""]
  return(mots)
}
