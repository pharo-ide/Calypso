system changes
isAffectedBy: aSystemAnnouncement inScope: anEnvironmentScope
	
	^anEnvironmentScope includesVariablesAffectedBy: aSystemAnnouncement