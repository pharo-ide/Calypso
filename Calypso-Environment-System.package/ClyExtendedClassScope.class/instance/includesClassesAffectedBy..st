system changes
includesClassesAffectedBy: aSystemAnnouncement

	self allClassesDo: [ :each | 
		(aSystemAnnouncement affectsClass: each) ifTrue: [ ^true ]].
	^false