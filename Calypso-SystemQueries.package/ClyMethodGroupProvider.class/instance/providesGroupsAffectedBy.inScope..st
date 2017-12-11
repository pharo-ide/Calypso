system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aClassScope

	aClassScope classesDo: [ :each | 
		(aSystemAnnouncement affectsClass: each) ifTrue: [ ^true ]].
		
	^false