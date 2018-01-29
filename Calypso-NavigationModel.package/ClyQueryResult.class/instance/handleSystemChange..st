system changes
handleSystemChange: aSystemAnnouncement
	needsRebuild ifTrue: [ ^self ].
	
	self protectAccessWhile: [
		(buildingQuery isResult: self affectedBy: aSystemAnnouncement)
			ifTrue: [ self itemsChanged]]