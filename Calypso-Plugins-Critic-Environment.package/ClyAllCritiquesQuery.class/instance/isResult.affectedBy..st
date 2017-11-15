system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	aSystemAnnouncement class = ClyCriticAnalysisDone ifFalse: [ ^false ].
	
	^scope isBasedOn: aSystemAnnouncement criticSubject