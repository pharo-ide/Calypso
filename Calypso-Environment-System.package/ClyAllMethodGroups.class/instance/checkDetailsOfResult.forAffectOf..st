system changes
checkDetailsOfResult: aQueryResult forAffectOf:  aSystemAnnouncement
	
	aQueryResult rawItemsDo: [ :each | 
		(aSystemAnnouncement affectsMethodGroup: each) ifTrue: [^true]].
	
	^false