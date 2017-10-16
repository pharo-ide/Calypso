system changes
isResult: items affectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement canAffectResultOfMethodQuery: self)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]