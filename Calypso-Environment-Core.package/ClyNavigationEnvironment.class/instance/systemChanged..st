system changes
systemChanged: aSystemAnnouncement

	self updateUsing: ClyFullEnvironmentUpdateStrategy new by: [
		self withCachedScopesDo: [:eachScope |
			eachScope handleSystemChange: aSystemAnnouncement ]
	]