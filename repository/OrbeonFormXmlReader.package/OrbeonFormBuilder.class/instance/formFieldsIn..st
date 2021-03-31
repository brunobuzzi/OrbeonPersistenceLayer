orbeon sections
formFieldsIn: xmlSection
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>. Components inside -repeat element- are NOT listed.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields collectableFields |

	collectableFields := self orbeonCollectableFieldsTags.
	fields := OrderedCollection new.
	xmlSection elementsAt: self dataFormatVersion frGridsNoRepeatXpath do: [:eachGrid | (eachGrid includesAttribute: 'repeat') 
		ifFalse: [collectableFields do:[:nodeName | eachGrid allElementsNamed: nodeName do: [:eachField | fields add: eachField]]]].
	^fields