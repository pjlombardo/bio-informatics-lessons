# Bio-informatics logical vectors
library(ggplot2)

df1<-data.frame(
    col1 = c(rep("A",3),
             rep("C",3),
             rep("G",3),
             rep("T",3)),
    # double letters designed to give a repeating
    # TTF
    col2 = c(
        "AT","TA","TC",
        "CT","GC","AG",
        "GT","CG","AT",
        "AT","TA","CG"
    )
)

# custom function for checking row-wise
custom_fxn<-function(x,y){
    # print(x)
    # print(strsplit(y,split=""))
    x %in% strsplit(y,split="")[[1]]
}

mapply(grepl, df1$col1, df1$col2)
mapply(custom_fxn,df1$col1, df1$col2)

## Time differences of mapply() versus a loop.
# grepl with mapply() is considerably faster than the loop, 
# but the fastest is the custom fxn with mapply().

set.seed(123)
als<-c("A","C","G","T")
df2<-data.frame(
    col1=sample(als, 500000,replace=T),
    col2=mapply(FUN=function(x,y){paste(x,y,sep="")},
                sample(als, 500000,replace=T),
                sample(als, 500000,replace=T))
)

## Timing mapply() with grepl
st1<-Sys.time()
res1<-mapply(grepl, df2$col1, df2$col2)
stp1<-Sys.time()
paste("Time required for mapply(): ",stp1-st1)


## Timing loop with grepl
st2<-Sys.time()
vec<-logical(500000)
for (i in 1:500000){
    vec[i]<-grepl(df2[i,1],df2[i,2])
}
stp2<-Sys.time()
paste("Time required for loop: ",stp2-st2)

## Timing custom function with mapply
custom_fxn<-function(x,y){
    # print(x)
    # print(strsplit(y,split=""))
    x %in% strsplit(y,split="")[[1]]
}
st3<-Sys.time()
res1<-mapply(custom_fxn, df2$col1, df2$col2)
stp3<-Sys.time()
paste("Time required for mapply() and custom: ",stp3-st3)



