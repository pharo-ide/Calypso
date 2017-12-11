accessing
getProperty: propertyClass ifAbsent: absentBlock

	^properties detect: [ :each | each isKindOf: propertyClass ] ifNone: absentBlock 