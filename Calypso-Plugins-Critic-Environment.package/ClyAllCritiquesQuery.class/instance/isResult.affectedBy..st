system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	"system critics recompute critiques after any system change"
	
	aSystemAnnouncement class = ClyCriticAnalysisDone ifFalse: [ ^false ].
	
	^scope isBasedOn: aSystemAnnouncement criticSubject