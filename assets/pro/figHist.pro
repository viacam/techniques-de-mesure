qq=(read_ascii('data.txt')).FIELD1
x=[1,3,5,7,9]
dx=2.d
h=[6,6,11,6,7]
hc=[6,12,23,29,36]
hardcopy,/open,filename='histCumul5classes.ps',bits=2,/color
plot,x,hc,psym=6,xrange=[-1,11],yrange=[0,40],xthick=4,ythick=4,thick=4,charthick=4,charsize=2,$
xtitle='x',ytitle=textoidl('F_k')
oplot,x,hc,thick=4,color=16
for i=0,4 do oplot,[x[i]-dx/2,x[i]+dx/2],[1,1]*hc[i],thick=4
for i=0,4 do oplot,(x[i]-dx/2)*[1,1],[0,hc[i]],thick=4
for i=0,4 do oplot,(x[i]+dx/2)*[1,1],[0,hc[i]],thick=4
oplot,[-2,12],[1,1]*18,line=2,thick=4
hardcopy,/close
;$open histCumul5classes.ps

;; nm=10
;; x1=randomn(s,nm) & h1=hist(x1,round(sqrt(nm)))
;; nm=100
;; x2=randomn(s,nm) & h2=hist(x2,round(sqrt(nm)))
;; nm=1000
;; x3=randomn(s,nm) & h3=hist(x3,round(sqrt(nm)))
;; nm=10000
;; plot,h1.x,h1.h/max(h1.h),xrange=minmax([h1.x,h2.x,h3.x,h4.x]),yrange=[0,1.2]
;; oplot,h2.x,h2.h/max(h2.h),color=100
;; oplot,h3.x,h3.h/max(h3.h),color=16

;; hardcopy,/open,filename='histGaussienDixCentMilleMesures.ps',bits=2,/color
;; plot,h1.x,h1.h/max(h1.h),xrange=[-4,4],yrange=[0,1.2],$
;; xtitle='X',ytitle='histogramme / max(histogramme)',$
;; xthick=4,ythick=4,thick=4,charthick=4,charsize=2
;; oplot,h2.x,h2.h/max(h2.h),color=100,thick=4
;; oplot,h3.x,h3.h/max(h3.h),color=16,thick=4
;; hardcopy,/close

nn=100000
xn=randomn(s,nn)
h=hist(xn,50)
 plot,h.x,h.h,xrange=[-15,15],xstyle=1
oplot,h.x+exp(h.x),h.h,color=16
oplot,-(h.x+exp(h.x)),h.h,color=100
;oplot,abs(h.x)^0.5*sgn(h.x)*2,h.h,color=100

mx=mean(xn)
mx2=mean(xn^2)
sx2=mx2-mx^2
sx=sqrt(sx2)
b1=total((xn-mx)^3)/nn/sx^3
g2=total((xn-mx)^4)/nn/sx^4-3
print,b1,g2

y=abs(xn)^2*sgn(xn)*0.3
my=mean(y)
my2=mean(y^2)
sy2=my2-my^2
sy=sqrt(sy2)
b1y=total((y-my)^3)/nn/sy^3
g2y=total((y-my)^4)/nn/sy^4-3
print,b1y,g2y

z=abs(xn)^0.5*sgn(xn)*2
mz=mean(z)
mz2=mean(z^2)
sz2=mz2-mz^2
sz=sqrt(sz2)
b1z=total((z-mz)^3)/nn/sz^3
g2z=total((z-mz)^4)/nn/sz^4-3
print,b1z,g2z

y=xn+exp(xn)
my=mean(y)
my2=mean(y^2)
sy2=my2-my^2
sy=sqrt(sy2)
b1y=total((y-my)^3)/nn/sy^3
g2y=total((y-my)^4)/nn/sy^4-3
print,b1y,g2y

z=-y
mz=mean(z)
mz2=mean(z^2)
sz2=mz2-mz^2
sz=sqrt(sz2)
b1z=total((z-mz)^3)/nn/sz^3
g2z=total((z-mz)^4)/nn/sz^4-3
print,b1z,g2z

hardcopy,/open,filename='aplatissement.ps',bits=2,/color
plot,h.x,h.h,xrange=[-15,15],xstyle=1,$
xtitle='X',ytitle='histogramme',xthick=4,ythick=4,thick=4,charthick=4,charsize=2
oplot,abs(h.x)^2*sgn(h.x)*0.3,h.h,color=16,thick=4
oplot,abs(h.x)^0.5*sgn(h.x)*2,h.h,color=100,thick=4
hardcopy,/close
;$open aplatissement.ps

hardcopy,/open,filename='asymetrie.ps',bits=2,/color
plot,h.x,h.h,xrange=[-15,15],xstyle=1,$
xtitle='X',ytitle='histogramme',xthick=4,ythick=4,thick=4,charthick=4,charsize=2
oplot,h.x+exp(h.x),h.h,color=16,thick=4
oplot,-(h.x+exp(h.x)),h.h,color=100,thick=4
hardcopy,/close
;$open asymetrie.ps
