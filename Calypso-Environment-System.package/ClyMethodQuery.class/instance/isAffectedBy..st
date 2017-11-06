system changes
isAffectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement canAffectResultOfMethodQuery: self)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]