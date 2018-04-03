system changes
handleSystemChange: aSystemAnnouncement
	super handleSystemChange: aSystemAnnouncement.
	needsRebuild ifTrue: [ ^self ].
	
	self protectAccessWhile: [
		self methodGroupProvidersDo: [ :each | 
			(each providesGroupsAffectedBy: aSystemAnnouncement inScope: self scope)
				ifTrue: [ ^ self itemsChanged ] ]	
	]