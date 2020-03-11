orbeon sections
getAllFormFieldsIn: xmlNode
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields collectableFields |

	collectableFields := self orbeonCollectableFieldsTags.
	fields := OrderedCollection new.
	collectableFields do:[:nodeName | xmlNode allElementsNamed: nodeName do: [:eachField | fields add: eachField]].

	^fields