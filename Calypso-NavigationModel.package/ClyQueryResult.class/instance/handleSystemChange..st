system changes
handleSystemChange: aSystemAnnouncement
	needsRebuild ifTrue: [ ^self ].
	aSystemAnnouncement shouldBeConsideredByCalypsoEnvironment ifFalse: [ ^self ]. "some system events can happen in wrong system state or be just obsolete. This little hook allows skip such events"	

	self protectAccessWhile: [
		(buildingQuery isResult: self affectedBy: aSystemAnnouncement)
			ifTrue: [ self itemsChanged]]