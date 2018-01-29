system changes
tryHandleSystemChange: aSystemAnnouncement 
	needsRebuild ifTrue: [ ^true ]. 
	aSystemAnnouncement shouldBeConsideredByCalypsoEnvironment ifFalse: [ ^true ]. "some system events can happen in wrong system state or be just obsolete. This little hook allows skip such events"	
	accessGuard 
		tryEnterCritical: [self handleSystemChange: aSystemAnnouncement]
		ifLocked: [ ^false ].
		
	^true