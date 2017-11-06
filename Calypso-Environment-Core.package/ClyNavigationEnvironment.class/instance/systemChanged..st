system changes
systemChanged: aSystemAnnouncement

	self updateUsing: ClyFullEnvironmentUpdateStrategy new by: [
		queryCache do: [ :eachResult | 
			eachResult handleSystemChange: aSystemAnnouncement ]
	]