testing
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	^aSystemAnnouncement affectsMethods
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]