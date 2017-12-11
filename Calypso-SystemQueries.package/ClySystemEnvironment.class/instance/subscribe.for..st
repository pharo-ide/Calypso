subscription
subscribe: anObject for: anAnnouncementClass
	self when: anAnnouncementClass send: #systemChanged: to: anObject 