*Calypso-Environment-System
includesClassesAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :each | 
		each includesClassesAffectedBy: aSystemAnnouncement ]