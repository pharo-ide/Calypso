system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement canAffectResultOfMethodQuery: self)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]