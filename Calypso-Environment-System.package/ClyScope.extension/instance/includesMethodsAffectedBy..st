*Calypso-Environment-System
includesMethodsAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :each | 
		each includesMethodsAffectedBy: aSystemAnnouncement ]