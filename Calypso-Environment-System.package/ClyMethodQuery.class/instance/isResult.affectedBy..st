system changes
isResult: items affectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement canAffectResultsOfMethodQuery: self)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]