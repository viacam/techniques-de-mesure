grp=(read_ascii('GroundPressureGusev.txt')).field1
delta=max(grp)-min(grp)
nc=102
cl=intx(1+nc,min(grp),max(grp))                                                      
h=dblarr(nc)
for i=0,nc-1 do h[i]=total(grp ge cl[i] and grp le cl[i+1])
ch=dblarr(nc)
for i=0,nc-1 do ch[i]=total(h[0:i])

tmp=intarr(20,10)
for i=0,9 do for j=0,9 do begin tmp[2*i,j]=ch[i*10+j]
hardcopy,/open,filename='histCumulated.ps',bits=2
plot,indgen(102)+1,round(ch),psym=4,xtitle='classe',ytitle='histogramme cum.',$
thick=4,xthick=4,ythick=4,charthick=4,charsize=1.8
for i=0,101 do oplot,[1,1]*(i+1),[0,ch[i]],thick=4
oplot,[60,102],[1,1]*275,thick=4
xyouts,45,270,'275',charsize=1.4,charthick=4
hardcopy,/close
$open histCumulated.ps
