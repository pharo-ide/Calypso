system changes
isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	"system critics recompute critiques after any system change"
	
	aSystemAnnouncement class = ClyCriticAnalysisDone ifFalse: [ ^false ].
	
	^anEnvironmentScope isBasedOn: aSystemAnnouncement criticSubject