system changes
requiresDetailedCheckForAffectOf: aSystemAnnouncement
	"it is special hook to allow particular scopes define that all items should be checked.
	For example class hierarchy scope could not track that removed class was in the hierarchy using only events. 
	It should be improved in system but right now it is like that"

	^(scope canDetectAffectOnClassesBy: aSystemAnnouncement) not