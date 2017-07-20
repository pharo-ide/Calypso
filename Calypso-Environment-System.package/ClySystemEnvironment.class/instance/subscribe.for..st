subscription
subscribe: anObject for: anAnnouncementClass
	self unsubscribe: anObject.
	changesAnnouncer weak when: anAnnouncementClass send: #systemChanged: to: anObject