nex=1000L
ex=randomu(ss,nex)*0.1+1
x=randomn(ss,100*nex)
t=intx(100*nex,0,100*nex-1)*1e-3
xm=x
for i=0L,nex-1 do xm[100*i]=ex[i]
h0=hist(x,20000)
hm=hist(xm,20000)
plot,hm.x,hm.h

;; hardcopy,/open,filename='serie1000points.ps',bits=2
;; plot,t,x,psym=3,xthick=4,ythick=4,thick=4,charsize=2,charthick=4,xtitle='temps [s]',ytitle='mesure',$
;; xrange=[0,10]
;; hardcopy,/close
;; $open serie1000points.ps

hardcopy,/open,filename='serie1000points_histogram_20000classes.ps',bits=2,/color
 plot,h0.x,h0.h,xthick=4,ythick=4,thick=4,charsize=2,charthick=4,xrange=[-1,1]*4,$
xtitle='mesures',ytitle=textoidl('frequence / 20000 classes')
oplot,hm.x,hm.h,color=0,thick=4
oplot,h0.x,h0.h,thick=4
hardcopy,/close
$open serie1000points_histogram_20000classes.ps
