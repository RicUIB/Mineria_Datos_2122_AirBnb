# zones
zone_Barcelona="http://data.insideairbnb.com/spain/catalonia/barcelona/2021-09-10/data/"
zone_Valencia="http://data.insideairbnb.com/spain/vc/valencia/2021-09-21/data/"
zone_Mallorca="http://data.insideairbnb.com/spain/islas-baleares/mallorca/2021-09-14/data/"

file_names=c("listings.csv.gz","calendar.csv.gz","reviews.csv.gz")

# zone_Mallorca

dir_data_Mallorca="data/Mallorca/"

parameters=data.frame(origindata=paste0(zone_Mallorca,file_names),
                      destfile=paste0(dir_data_Mallorca,file_names))
                    
parameters                      
apply(parameters,1,FUN=function(x) download.file(url=x[1],destfile=x[2]))
dir(dir_data)
              
# zone_Valencia           
              
dir_data_Valencia="data/Valencia/"

parameters=data.frame(origindata=paste0(zone_Valencia,file_names),
                      destfile=paste0(dir_data_Valencia,file_names))

parameters                      
apply(parameters,1,FUN=function(x) download.file(url=x[1],destfile=x[2]))
dir(dir_data)


#zone_Barcelona 

dir_data_Barcelona="data/Barcelona/"

parameters=data.frame(origindata=paste0(zone_Barcelona,file_names),
                      destfile=paste0(dir_data_Barcelona,file_names))

parameters                      
apply(parameters,1,FUN=function(x) download.file(url=x[1],destfile=x[2]))
dir(dir_data)

