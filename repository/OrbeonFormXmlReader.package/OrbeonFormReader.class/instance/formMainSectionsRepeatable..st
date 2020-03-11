orbeon sections
formMainSectionsRepeatable: aBoolean

	aBoolean ifFalse: [^self formMainSections reject: [:eachSection | (eachSection includesAttribute: 'repeat')]].

	^self formMainSections select: [:eachSection | (eachSection includesAttribute: 'repeat')]