system changes
includesClassGroupsAffectedBy: aSystemAnnouncement

	| providers |
	^basisObjects anySatisfy: [ :eachPackage | 
		providers := environment collectClassGroupProvidersFor: eachPackage.
		providers anySatisfy: [ :eachProvider | 
			eachProvider providesGroupsAffectedBy: aSystemAnnouncement]]