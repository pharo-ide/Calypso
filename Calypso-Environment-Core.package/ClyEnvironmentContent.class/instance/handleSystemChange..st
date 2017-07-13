system changes
handleSystemChange: aSystemAnnouncement
	items ifNil: [ ^self ]. "when I am not built (no items) I don't care about any change"
	aSystemAnnouncement shouldBeConsideredByCalypsoEnvironment ifFalse: [ ^self ]. "some system events can happen in wrong system state or be just obsolete. This little hook allows skip such events"
	
	(accessGuard critical: [
		buildingQuery isResult: self affectedBy: aSystemAnnouncement])
			ifTrue: [ self changedBy: aSystemAnnouncement ]