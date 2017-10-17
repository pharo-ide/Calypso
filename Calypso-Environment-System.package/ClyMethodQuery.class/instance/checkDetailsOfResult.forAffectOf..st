system changes
checkDetailsOfResult: items forAffectOf: aSystemAnnouncement
	
	^(aSystemAnnouncement canAffectResultOfMethodQuery: self)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]