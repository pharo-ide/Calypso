system changes
isAffectedBy: aSystemAnnouncement
	
	(environmentScope includesVariablesAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ].
		
	^items anySatisfy: [ :each | 
		aSystemAnnouncement affectsMethodGroup: each actualObject ]