system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	| asyncGroups |
	(scope includesMethodGroupsAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ].
	
	(aSystemAnnouncement isKindOf: ClyAsyncQueryIsDone) ifTrue: [ 
		asyncGroups := aQueryResult items select: [ :each | each isKindOf: ClyAsyncMethodGroup ].
		(asyncGroups anySatisfy: [ :each | each asyncQueryResult == aSystemAnnouncement queryResult])
			ifTrue: [ ^true ]
	 ].

	^false