system changes
includesVariablesAffectedBy: aSystemAnnouncement

	self classesDo: [ :class | 
		(aSystemAnnouncement affectsVariablesOf: class) ifTrue: [^true]].
	
	^false