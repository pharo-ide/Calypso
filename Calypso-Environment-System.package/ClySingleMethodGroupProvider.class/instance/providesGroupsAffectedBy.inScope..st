system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aClassScope

	^aSystemAnnouncement 
		affectsMethodGroup: (self createMethodGroupInScope: aClassScope)