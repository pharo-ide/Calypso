*Calypso-SystemQueries
includesClassesAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :each | 
		each includesClassesAffectedBy: aSystemAnnouncement ]