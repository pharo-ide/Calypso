system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	^aSystemAnnouncement affectsClassExtension
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]