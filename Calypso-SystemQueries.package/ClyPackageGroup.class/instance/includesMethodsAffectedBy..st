system changes
includesMethodsAffectedBy: aSystemAnnouncement

	^self packages anySatisfy: [ :each |  
		aSystemAnnouncement affectsMethodsDefinedInPackage: each ]