t=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]
x=[0.01,0.18,0.52,0.77,1.18,1.08,0.52,-0.39,-0.63,0.49,1.37]
err=dblarr(100)
a=intx(100,1,10)
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]

hardcopy,/open,filename='figure2.ps',bits=2
plot,a,err,xthick=4,ythick=4,thick=4,charsize=2,charthick=4,xtitle='a',ytitle=textoidl('Q^2')
hardcopy,/close
;$open figure2.ps

a=intx(100,a[p.i-1],a[p.i+1])
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]
a=intx(100,a[p.i-1],a[p.i+1])
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]
a=intx(100,a[p.i-1],a[p.i+1])
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]
a=intx(100,a[p.i-1],a[p.i+1])
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]
a=intx(100,a[p.i-1],a[p.i+1])
for i=0,99 do err[i]=total((x-(sqrt(t/a[i])+sin(a[i]*t^2)))^2)
coomin,err,p
print,a[p.i]



