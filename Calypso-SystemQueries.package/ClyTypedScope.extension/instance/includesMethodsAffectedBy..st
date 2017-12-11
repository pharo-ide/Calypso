*Calypso-SystemQueries
includesMethodsAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :each | 
		each includesMethodsAffectedBy: aSystemAnnouncement ]