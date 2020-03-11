orbeon sections
formGridFieldsIn: xmlGrid
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields collectableFields|

	collectableFields := self orbeonCollectableFieldsTags.
	fields := OrderedCollection new.
	xmlGrid elementsDo: [:eachGrid | (eachGrid includesAttribute: 'repeat') 
		ifFalse: [collectableFields do:[:nodeName | eachGrid allElementsNamed: nodeName do: [:eachField | fields add: eachField]]]].
	^fields