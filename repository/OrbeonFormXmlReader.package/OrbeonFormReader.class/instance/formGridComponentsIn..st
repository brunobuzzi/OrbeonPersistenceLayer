orbeon sections
formGridComponentsIn: xmlSection
	"The receiver get the repeat component of Orbeon Form Definition <xmlDefinition>"
	| grids |

	grids := OrderedCollection new.
	xmlSection elementsAt: 'fr:grid' do: [:eachGrid | (eachGrid includesAttribute: 'repeat') 
		ifTrue: [grids add: eachGrid]].
	^grids