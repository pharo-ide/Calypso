system changes
isAffectedByClassChange: aClassAnnouncement
	^(classes includes: aClassAnnouncement classAffected)
		and: [ aClassAnnouncement affectsMethods]