system changes
handleSystemChange: aSystemAnnouncement byProcessingList: allProcessingResults 
	needsRebuild ifTrue: [ ^allProcessingResults remove: self ]. 
	aSystemAnnouncement shouldBeConsideredByCalypsoEnvironment 
		ifFalse: [ ^allProcessingResults remove: self ]. "some system events can happen in wrong system state or be just obsolete. This little hook allows skip such events"
	accessGuard 
		tryEnterCritical: [self handleSystemChange: aSystemAnnouncement]
		ifLocked: [ ^self ].
		
	allProcessingResults remove: self