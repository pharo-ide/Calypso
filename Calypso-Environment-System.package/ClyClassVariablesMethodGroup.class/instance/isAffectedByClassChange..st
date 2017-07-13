system changes
isAffectedByClassChange: aClassAnnouncement

	^classes anySatisfy: [ :each | aClassAnnouncement affectsVariablesOf: each ]