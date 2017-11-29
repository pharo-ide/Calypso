system changes
includesClassesAffectedBy: aSystemAnnouncement

	self classesDo: [ :each | 
		(aSystemAnnouncement affectsClass: each) ifTrue: [ ^true ]].
	^false