testing
isBasedOnItemType: aClass

	^self isEmpty 
		ifTrue: [ rootDataSource isBasedOnQueryOf: aClass ]
		ifFalse: [ self lastSelectedItem isBasedOnItemType: aClass  ]