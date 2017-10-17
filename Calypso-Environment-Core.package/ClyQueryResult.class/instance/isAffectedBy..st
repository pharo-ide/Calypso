system changes
isAffectedBy: aSystemAnnouncement
		
	(buildingQuery isAffectedBy: aSystemAnnouncement inScope: environmentScope)
			ifTrue: [ ^true ].
	
	(buildingQuery requiresDetailedCheckForAffectOf: aSystemAnnouncement inScope: environmentScope)
		ifFalse: [ ^false ].
		
	^buildingQuery checkDetailsOfResult: items forAffectOf: aSystemAnnouncement