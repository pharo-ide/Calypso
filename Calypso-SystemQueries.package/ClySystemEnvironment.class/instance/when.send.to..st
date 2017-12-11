subscription
when: anAnnouncementClass send: aSelector to: anObject
	self unsubscribe: anObject.
	changesAnnouncer weak when: anAnnouncementClass send: aSelector to: anObject