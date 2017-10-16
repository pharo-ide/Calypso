system changes
fixResult: aQueryResult affectedBy: aSystemAnnouncement

	aQueryResult	isBuilt ifFalse: [ ^self ]. "when given result is not yet built then nothing to fix"		
	aSystemAnnouncement shouldBeConsideredByCalypsoEnvironment ifFalse: [ ^self ]. "some system events can happen in wrong system state or be just obsolete. This little hook allows skip such events"	
	aQueryResult fixItemsIf: [:items | 
		self isResult: items affectedBy: aSystemAnnouncement ]