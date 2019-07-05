main components
currentRadioButtonSelection

	^self componentValueAt: 'all-latest' ifAbsent: 'Latest Versions'