instance creation
ofAll: methods
	^methods collect: [ :each | self of: each ] as: AnnouncementSet 