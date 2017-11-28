system changes
includesMethodsAffectedBy: aSystemAnnouncement

	self classesDo: [ :each | 
		(each includesMethodsAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ]].
	^false