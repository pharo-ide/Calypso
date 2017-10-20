system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement
	self
		methodGroupProvidersDo: [ :each | 
			(each providesGroupsAffectedBy: aSystemAnnouncement inScope: self)
				ifTrue: [ ^ true ] ].
	^ false