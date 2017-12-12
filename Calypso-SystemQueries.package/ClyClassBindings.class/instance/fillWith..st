building
fillWith: classes
	items := classes collect: [ :each |
		(each isKindOf: Association) 
			ifTrue: [ each ] ifFalse: [ each instanceSide binding ]]