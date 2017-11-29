*Calypso-SystemQueries
includesClassesAffectedBy: aSystemAnnouncement

	^(aSystemAnnouncement affectsClassesDefinedInPackage: self)
		or: [ aSystemAnnouncement affectsClassesExtendedInPackage: self ]