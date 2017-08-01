system changes
providesGroupsAffectedBy: aSystemAnnouncement

	^classes anySatisfy: [:each | aSystemAnnouncement affectsMethodTagIn: each]