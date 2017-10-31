system changes
checkDetailsOfResult: aQueryResult forAffectOf: aSystemAnnouncement
	"In some scopes we should check every class that it was affected by event
	For example class hierarchy scope could not track that removed class was in hierarchy using only events. 
	It should be improved in system but right now it is like that"		
			
	aQueryResult rawItemsDo: [ :each |
		(aSystemAnnouncement affectsClass: each) ifTrue: [^true]].
	
	^false