accessing
getProperty: propertyClass 

	^properties detect: [ :each | each isKindOf: propertyClass ] 