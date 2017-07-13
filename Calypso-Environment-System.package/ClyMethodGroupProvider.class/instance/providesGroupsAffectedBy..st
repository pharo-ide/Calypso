system changes
providesGroupsAffectedBy: aSystemAnnouncement

	^classes anySatisfy: [:each | aSystemAnnouncement affectsClass: each]