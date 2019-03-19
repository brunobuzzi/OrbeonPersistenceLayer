encode decode
hasDecodedSpanishAccent
	"Answer whther or not the receiver includes an spanish decode accent in Form Source <xmlString>"

	^#('á' 'é' 'í' 'ó' 'ú' 'ñ' 'Á' 'É' 'Í' 'Ó' 'Ú' 'Ñ') anySatisfy: [:each | xmlString includesSubstring: each]