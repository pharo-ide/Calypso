system changes
systemChanged: aSystemAnnouncement

	self updateUsing: ClyFullEnvironmentUpdateStrategy new by: [
		self withCachedQueriesDo: [:eachResult | 
			eachResult handleSystemChange: aSystemAnnouncement ]
	]