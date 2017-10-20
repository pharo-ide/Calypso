system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement

	self methodGroupProvidersDo: [ :each |
		(each providesGroupsAffectedBy: aSystemAnnouncement)	ifTrue: [^true]].
		
	^false