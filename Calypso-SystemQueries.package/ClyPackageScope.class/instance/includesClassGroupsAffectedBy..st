system changes
includesClassGroupsAffectedBy: aSystemAnnouncement

	| providers |
	basisObjects do: [ :eachPackage | 
		environment pluginsDo: [ :plugin |
			providers := plugin collectClassGroupProviders.
			providers do: [ :eachProvider | 
				(eachProvider providesGroupsAffectedBy: aSystemAnnouncement inScope: self)
					ifTrue: [^true]]]].
	^false