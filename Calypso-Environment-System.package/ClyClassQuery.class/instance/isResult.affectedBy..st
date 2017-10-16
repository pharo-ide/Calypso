system changes
isResult: items affectedBy: aSystemAnnouncement

	(scope includesClassesAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ].

	"it is special hook to allow particular scopes define that all items should be checked.
	For example class hierarchy scope could not track that removed class was in hierarchy
	using only events. It should be improved in system but right now it is like that"		
	(scope canDetectAffectOnClassesBy: aSystemAnnouncement) ifFalse: [ 
		^items anySatisfy: [ :each |
			aSystemAnnouncement affectsClass: each actualObject]].
	
	^false