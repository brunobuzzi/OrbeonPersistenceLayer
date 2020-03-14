other
newForFieldNamed: fieldName imageFileName: fileName annotationFileName: annotationFileName

	^(super newForFieldNamed: fieldName)
			imageFileName: (OrbeonFileName newForFieldNamed: fieldName fileName: fileName);
			annotationFileName: (OrbeonFileName newForFieldNamed: fieldName fileName: annotationFileName);
			yourself