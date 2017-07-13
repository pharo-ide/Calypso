system changes
includesMethodsAffectedBy: aSystemAnnouncement

	self allClassesDo: [ :each | 
		(each includesMethodsAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ]].
	^false