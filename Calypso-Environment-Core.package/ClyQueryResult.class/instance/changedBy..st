system changes
changedBy: aSystemAnnouncement

	accessGuard critical: [ 	
		items := nil].
	
	announcer ifNil: [ ^self ].	
	environment content: self wasChangedBy: aSystemAnnouncement
