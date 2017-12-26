accessing
definingMetaLevelScope
	^isInstanceSide 
		ifTrue: [ ClyInstanceSideScope ]
		ifFalse: [ ClyClassSideScope  ]