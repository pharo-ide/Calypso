system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aPackageScope
	aPackageScope packagesDo: [ :each | 
		(aSystemAnnouncement affectsPackage: each) ifTrue: [^true]].
	^false