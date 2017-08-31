system changes
includesClassGroupsAffectedBy: aSystemAnnouncement

	| providers |
	basisObjects do: [ :eachPackage | 
		environment pluginsDo: [ :plugin |
			providers := plugin collectClassGroupProvidersFor: eachPackage.
			providers do: [ :eachProvider | 
				(eachProvider providesGroupsAffectedBy: aSystemAnnouncement)
					ifTrue: [^true]]]].
	^false