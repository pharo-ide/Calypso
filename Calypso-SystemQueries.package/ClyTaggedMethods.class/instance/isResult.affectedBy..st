system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement affectsMethodsTaggedWith: tag)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]