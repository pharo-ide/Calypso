subscription
subscribe: anObject for: anAnnouncementClass
	self unsubscribe: anObject.
	changesAnnouncer when: anAnnouncementClass send: #systemChanged: to: anObject