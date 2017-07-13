system changes
isAffectedBy: aSystemAnnouncement
	"system critics recompute critiques after any system change"
	
	aSystemAnnouncement class = ClyCriticAnalysisDone ifFalse: [ ^false ].
	
	^environmentScope isBasedOn: aSystemAnnouncement criticSubject