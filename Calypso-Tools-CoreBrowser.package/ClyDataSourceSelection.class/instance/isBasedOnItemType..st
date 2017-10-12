testing
isBasedOnItemType: aClass

	^self isEmpty 
		ifTrue: [ rootDataSource isBasedOnItemType: aClass ]
		ifFalse: [ self lastSelectedItem isBasedOnItemType: aClass  ]