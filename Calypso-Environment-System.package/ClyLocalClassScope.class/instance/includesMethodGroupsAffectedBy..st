system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement

	| providers |
	providers := environment collectMethodGroupProvidersFor: basisObjects.
	^providers anySatisfy: [ :eachProvider | 
		eachProvider providesGroupsAffectedBy: aSystemAnnouncement]