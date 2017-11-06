system changes
isAffectedInOldLogicBy: aSystemAnnouncement

	(environmentScope includesMethodGroupsAffectedBy: aSystemAnnouncement) ifTrue: [ ^true ].
	
	^items anySatisfy: [ :each | 
		aSystemAnnouncement affectsMethodGroup: each actualObject ]