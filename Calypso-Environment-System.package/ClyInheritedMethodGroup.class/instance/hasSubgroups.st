testing
hasSubgroups
	classScope classesDo: [ :each | 
		(each isRootInEnvironment not or: [ each traits notEmpty ])
			ifTrue: [ ^true ] ].
	^false