system changes
isAffectedBy: aSystemAnnouncement
	"system critics recompute critiques after any system change"
	
	aSystemAnnouncement class = ClyCriticAnalysisDone ifFalse: [ ^false ].
	
	^scope isBasedOn: aSystemAnnouncement criticSubject