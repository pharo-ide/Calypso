system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	^(aSystemAnnouncement affectsMethodsDefinedInPackage: package)
		and: [ scope includesMethodsAffectedBy: aSystemAnnouncement]