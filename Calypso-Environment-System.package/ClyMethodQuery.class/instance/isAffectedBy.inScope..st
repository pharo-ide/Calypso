system changes
isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	
	^(aSystemAnnouncement canAffectResultOfMethodQuery: self)
		and: [ anEnvironmentScope includesMethodsAffectedBy: aSystemAnnouncement]