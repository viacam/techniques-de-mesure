;exercice 1 série 1 MTR 2015

;load data
qq=(read_ascii('RayonDeCourbure.txt')).FIELD1
qq=2*qq
print,'mean data',mean(qq),'stddev data',stddev(qq)

;success rate
print,'2 % accuracy',total(abs(qq-100) le 0.02*100)/1000
print,'1 % accuracy',total(abs(qq-100) le 0.01*100)/1000
print,'accuracy for 90 % of lenses ?',total(abs(qq-100) le 0.033*100)/1000

;classes, frequencies, histogram
range=max(qq)-min(qq)          
nc=5
cl05=intx(nc,min(qq),max(qq))
dc05=range/nc
tf05=dblarr(nc)
for i=0,nc-1 do tf05[i]=total(qq ge cl05[i] and qq lt cl05[i]+dc05)
plot,cl05,tf05,psym=6
mean05=total(cl05*tf05)/total(tf05)
sigm05=sqrt(total(cl05^2*tf05)/total(tf05)-mean05^2)
print,' 5 classes, mean data',mean05,'stddev data',sigm05
;
nc=10
cl10=intx(nc,min(qq),max(qq))
dc10=range/nc
tf10=dblarr(nc)
for i=0,nc-1 do tf10[i]=total(qq ge cl10[i] and qq lt cl10[i]+dc10)
oplot,cl10,tf10,psym=5
mean10=total(cl10*tf10)/total(tf10)
sigm10=sqrt(total(cl10^2*tf10)/total(tf10)-mean10^2)
print,'10 classes, mean data',mean10,'stddev data',sigm10
;
nc=20
cl20=intx(nc,min(qq),max(qq))
dc20=range/nc
tf20=dblarr(nc)
for i=0,nc-1 do tf20[i]=total(qq ge cl20[i] and qq lt cl20[i]+dc20)
oplot,cl20,tf20,psym=4
mean20=total(cl20*tf20)/total(tf20)
sigm20=sqrt(total(cl20^2*tf20)/total(tf20)-mean20^2)
print,'20 classes, mean data',mean20,'stddev data',sigm20
;
nc=40
cl40=intx(nc,min(qq),max(qq))
dc40=range/nc
tf40=dblarr(nc)
for i=0,nc-1 do tf40[i]=total(qq ge cl40[i] and qq lt cl40[i]+dc40)
oplot,cl40,tf40,psym=2
mean40=total(cl40*tf40)/total(tf40)
sigm40=sqrt(total(cl40^2*tf40)/total(tf40)-mean40^2)
print,'40 classes, mean data',mean40,'stddev data',sigm40
