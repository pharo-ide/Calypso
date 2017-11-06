system changes
isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	
	^subqueries anySatisfy: [ :each | 
		each isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope]