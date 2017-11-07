system changes
checkDetailsOfResult: aQueryResult forAffectOf: aSystemAnnouncement

	subqueries 
		select: [ :each | each requiresDetailedCheckForAffectOf: aSystemAnnouncement]
		thenDo: [ :each | 
			(each checkDetailsOfResult: aQueryResult forAffectOf: aSystemAnnouncement)
				ifTrue: [ ^true ] ].
	^false