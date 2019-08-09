rdc=(read_ascii('RayonDeCourbure.txt')).field1
foc=2*rdc
print,total(abs(foc-100) le 2),n_elements(foc)
print,total(abs(foc-100) le 2)/n_elements(foc)

dfoc=intx(100,0,max(abs(foc-100)))
cd=dblarr(100)
for i=0,99 do cd[i]=total(abs(foc-100) le dfoc[i])*1e-3
print,dfoc[where(abs(cd-0.9) eq min(abs(cd-0.9)))]

hardcopy,/open,filename='cumulativeDisribution.ps',bits=2
ploth,dfoc,cd,xt='erreur en val. abs. [mm]',yt='proportion de cas'
oplot,[0,8],[1,1]*0.657,line=2,thick=4
oplot,[1,1]*2,[0,1],line=2,thick=4
oplot,[0,8],[1,1]*0.9,line=1,thick=4
oplot,[1,1]*3.342,[0,1],line=1,thick=4
xyouts,3.5,0.05,'3.34 mm',charsize=1.8,charthick=4
xyouts,0.3,0.67,'0.657',charsize=1.8,charthick=4
hardcopy,/close

exa,rdc

mm=dblarr(10)
for i=0,9 do begin &$
  h=hist(rdc,10*(i+1)) &$
  mm[i]=h.x[where(h.h eq max(h.h))] &$
endfor
plot,10*(indgen(10)+1),mm,ystyle=1

cl05=intx(06,min(rdc),max(rdc))
cl10=intx(11,min(rdc),max(rdc))
cl20=intx(21,min(rdc),max(rdc))
cl40=intx(41,min(rdc),max(rdc))

tf05=dblarr(05)
tf10=dblarr(10)
tf20=dblarr(20)
tf40=dblarr(40)

for k=0,04 do tf05[k]=total(rdc ge cl05[k] and rdc le cl05[k+1])
for k=0,09 do tf10[k]=total(rdc ge cl10[k] and rdc le cl10[k+1])
for k=0,19 do tf20[k]=total(rdc ge cl20[k] and rdc le cl20[k+1])
for k=0,39 do tf40[k]=total(rdc ge cl40[k] and rdc le cl40[k+1])

hardcopy,/open,filename='histogramme05classe.ps',bits=2
plot,indgen(5)+1,tf05,psym=6,xrange=[0,6],thick=4,xthick=4,ythick=4,charsize=1.8,charthick=4,$
xtitle='num. de classe',ytitle='frequence'
for i=0,4 do oplot,[i,i]+1,[0,tf05[i]],thick=8
hardcopy,/close

hardcopy,/open,filename='histogramme10classe.ps',bits=2
plot,indgen(10)+1,tf10,psym=6,xrange=[0,11],thick=4,xthick=4,ythick=4,charsize=1.8,charthick=4,$
xtitle='num. de classe',ytitle='frequence'
for i=0,9 do oplot,[i,i]+1,[0,tf10[i]],thick=8
hardcopy,/close

hardcopy,/open,filename='histogramme20classe.ps',bits=2
plot,indgen(20)+1,tf20,psym=6,xrange=[0,21],thick=4,xthick=4,ythick=4,charsize=1.8,charthick=4,$
xtitle='num. de classe',ytitle='frequence'
for i=0,19 do oplot,[i,i]+1,[0,tf20[i]],thick=8
hardcopy,/close

hardcopy,/open,filename='histogramme40classe.ps',bits=2
plot,indgen(40)+1,tf40,psym=6,xrange=[0,41],thick=4,xthick=4,ythick=4,charsize=1.8,charthick=4,$
xtitle='num. de classe',ytitle='frequence'
for i=0,39 do oplot,[i,i]+1,[0,tf40[i]],thick=8
hardcopy,/close
