xx=intx(1000,-5,5)         
yy=sin(xx*2)*xx/sqrt(3)+2.d/(xx^2+1)
t=intx(21,-5,5)
hardcopy,/open,filename='exemple1D.ps',bits=2                                       
plot,xx,yy,xthick=4,ythick=4,thick=4,charsize=2,charthick=4,xtitle='x',ytitle='f(x)'
oplot,t,sin(t*2)*sqrt(t^2/3)+2/(t^2+1)+randomn(s,21)*0.25,psym=6,thick=4            
hardcopy,/close                                                                     
$open exemple1D.ps                     
