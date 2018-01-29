system changes
systemChanged: aSystemAnnouncement

	self updateUsing: ClyFullEnvironmentUpdateStrategy new by: [
		self handleSystemChange: aSystemAnnouncement 
	]