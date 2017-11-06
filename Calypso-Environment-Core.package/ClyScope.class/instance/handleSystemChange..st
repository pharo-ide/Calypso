system changes
handleSystemChange: aSystemAnnouncement

	self withCachedQueriesDo: [ :each | each handleSystemChange: aSystemAnnouncement ]