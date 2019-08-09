restore,'dataExeemple.sav'

A=[$
[150                  ,total(xyrt.x)          ,total(xyrt.y)          ,total(xyrt.x^2)          ,total(xyrt.x*xyrt.y)     ,total(xyrt.y^2)         ],$
[total(xyrt.x)        ,total(xyrt.x^2)        ,total(xyrt.y*xyrt.x)   ,total(xyrt.x^3)          ,total(xyrt.x^2*xyrt.y)   ,total(xyrt.y^2*xyrt.x)  ],$
[total(xyrt.y)        ,total(xyrt.x*xyrt.y)   ,total(xyrt.y^2)        ,total(xyrt.x^2*xyrt.y)   ,total(xyrt.x*xyrt.y^2)   ,total(xyrt.y^3)         ],$
[total(xyrt.x^2)      ,total(xyrt.x^3)        ,total(xyrt.y*xyrt.x^2) ,total(xyrt.x^4)          ,total(xyrt.x^3*xyrt.y)   ,total(xyrt.y^2*xyrt.x^2)],$
[total(xyrt.x*xyrt.y) ,total(xyrt.x^2*xyrt.y) ,total(xyrt.y^2*xyrt.x) ,total(xyrt.x^3*xyrt.y)   ,total(xyrt.x^2*xyrt.y^2) ,total(xyrt.y^3*xyrt.x)  ],$
[total(xyrt.y^2)      ,total(xyrt.x*xyrt.y^2) ,total(xyrt.y^3)        ,total(xyrt.x^2*xyrt.y^2) ,total(xyrt.x*xyrt.y^3)   ,total(xyrt.y^4)         ]]

B=[total(qq),total(xyrt.x*qq),total(xyrt.y*qq),total(xyrt.x^2*qq),total(xyrt.x*xyrt.y*qq),total(xyrt.y^2*qq)]

