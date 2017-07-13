system changes
includesClassesAffectedBy: aSystemAnnouncement
	"Now we simply check that change affect class package because currently there is no simple way to get required information form class announcement in cases when class moved around tags of different packages"
	
	^aSystemAnnouncement affectsClassesDefinedInPackage: package