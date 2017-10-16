system changes
handleSystemChange: aSystemAnnouncement

	self withCachedQueriesDo: [ :query :result | 
		query fixResult: result affectedBy: aSystemAnnouncement ]