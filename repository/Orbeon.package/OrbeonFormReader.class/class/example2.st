other
example2
 "
OrbeonFormReader for: (FileStream fileNamed: '/opt/encuesta-ute2.xml') contents with: (FileStream fileNamed: '/opt/encuesta-ute-form.xml') contents.
OrbeonFormReader for: (FileStream fileNamed: '/opt/encuesta-ute-form.xml') contents
" 

	^self for: (FileStream fileNamed: '/opt/encuesta-ute-form.xml') contents.