system changes
includesClassesAffectedBy: aSystemAnnouncement
	"Now we simply check that change affects some classes of all packages in group"
	
	^self packages anySatisfy: [ :each |  
		aSystemAnnouncement affectsClassesDefinedInPackage: each ]