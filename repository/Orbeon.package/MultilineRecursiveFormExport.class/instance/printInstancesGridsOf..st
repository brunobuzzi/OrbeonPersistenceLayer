export
printInstancesGridsOf: aFormSectionInstance
	"The receiver print the top grids of <aFormSectionInstance> in <printArray>"

	aFormSectionInstance grids do: [:eachGrid | 
		eachGrid gridIterations do: [:eachDictionary | "initialize array for each grid iteration"
			1 to: self numberOfFields do: [:each | printArray at: lineNumber put: (Array new: self numberOfFields)].

			self printInfoForGrid: eachGrid. "print in the 2 column info about the grid"

			(printArray at: lineNumber) at: 1 "id" put: aFormSectionInstance id.

			eachDictionary keysAndValuesDo: [:fieldName :fieldValue |
				
				self insert: fieldName value: fieldValue]. "for each field insert in <printArray> field name and value"

			lineNumber := lineNumber + 1.
		]
	].