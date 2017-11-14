testing
hasSubgroups
	
	classScope methodsDo: [ :eachMethod |
		eachMethod isExtension ifTrue: [^true]].
	^false