system changes
isAffectedBy: aSystemAnnouncement
		
	(buildingQuery isAffectedBy: aSystemAnnouncement)	ifTrue: [ ^true ].
	
	(buildingQuery requiresDetailedCheckForAffectOf: aSystemAnnouncement)
		ifFalse: [ ^false ].
		
	^buildingQuery checkDetailsOfResult: self forAffectOf: aSystemAnnouncement