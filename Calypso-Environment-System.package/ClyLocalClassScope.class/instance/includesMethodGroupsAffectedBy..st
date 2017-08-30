system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement

	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectMethodGroupProvidersFor: basisObjects.
		^providers anySatisfy: [ :eachProvider | 
			eachProvider providesGroupsAffectedBy: aSystemAnnouncement]]