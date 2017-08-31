system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement

	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectMethodGroupProvidersFor: basisObjects.
		providers do: [ :eachProvider | 
			(eachProvider providesGroupsAffectedBy: aSystemAnnouncement)
				ifTrue: [^true]]].
	^false