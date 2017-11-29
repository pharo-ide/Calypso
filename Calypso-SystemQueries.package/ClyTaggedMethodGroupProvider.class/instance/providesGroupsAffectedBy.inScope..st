system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aClassScope

	aClassScope classesDo: [ :each | 
		(aSystemAnnouncement affectsMethodTagIn: each) ifTrue: [ ^true ]
	].

	^false