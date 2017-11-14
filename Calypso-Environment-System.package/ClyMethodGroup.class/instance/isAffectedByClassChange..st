system changes
isAffectedByClassChange: aClassAnnouncement
	^(classScope includesClassesAffectedBy: aClassAnnouncement)
		and: [ aClassAnnouncement affectsMethods]