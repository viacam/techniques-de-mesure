qq=round((sin(!dpi*indgen(12)/11.d)/total(sin(!dpi*indgen(12)/11.d)))*100)
qq=qq[1:10]
mm=intarr(100)
mm=0                                          
for i=0,9 do mm=[mm,intarr(qq[i])+(i+1)]
mm=mm[1:*]
ii=17
repeat begin &$
  ss=round(randomu(seed,1)*100+0.5) &$
  if min(abs(ii-ss[0])) gt 0 then ii=[ii,ss] &$
endrep until n_elements(ii) eq 100
ii=ii-1
fr=dblarr(10)
for i=0,9 do fr[i]=total(qq[0:i])*0.01
hardcopy,/open,filename='probabiliteEtfonctiondeRepartition.ps',bits=2,/color
plot,indgen(10)+1,qq/100.d,xthick=4,ythick=4,thick=4,charsize=2,charthick=4,$
xtitle=textoidl('x_k'),ytitle=textoidl('p_k et F_k'),psym=-6,xrange=[0,11],xstyle=1,yrange=[0,1]
oplot,indgen(10)+1,fr,psym=-5,color=16,thick=4
xyouts,6.5,0.20,textoidl('p_k'),charsize=2,charthick=4
xyouts,4.0,0.55,textoidl('F_k'),charsize=2,charthick=4
oplot,[1,1]*5.5,[0,1],line=2,thick=4,color=100
hardcopy,/close
$open probabiliteEtfonctiondeRepartition.ps
