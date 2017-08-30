system changes
includesClassGroupsAffectedBy: aSystemAnnouncement

	| providers |
	^basisObjects anySatisfy: [ :eachPackage | 
		environment pluginsDo: [ :plugin |
			providers := plugin collectClassGroupProvidersFor: eachPackage.
			providers anySatisfy: [ :eachProvider | 
				eachProvider providesGroupsAffectedBy: aSystemAnnouncement]]]