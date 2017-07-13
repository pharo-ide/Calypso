system changes
includesMethodGroupsAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :eachGroup | 
		aSystemAnnouncement affectsMethodGroup: eachGroup]