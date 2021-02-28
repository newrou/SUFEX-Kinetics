
#libreoffice --headless --convert-to xlsx:"Calc MS Excel 2007 XML":59,34,0,1 $1
libreoffice --headless --convert-to xlsx:"Calc MS Excel 2007 XML" --infilter="CSV:59,34,UTF-8,1,,1033" $1
