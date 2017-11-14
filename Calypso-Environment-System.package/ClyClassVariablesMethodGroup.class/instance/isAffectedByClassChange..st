system changes
isAffectedByClassChange: aClassAnnouncement

	^classScope anySatisfy: [ :each | aClassAnnouncement affectsVariablesOf: each ]