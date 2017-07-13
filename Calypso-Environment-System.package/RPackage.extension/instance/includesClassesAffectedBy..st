*Calypso-Environment-System
includesClassesAffectedBy: aSystemAnnouncement

	^(aSystemAnnouncement affectsClassesDefinedInPackage: self)
		or: [ aSystemAnnouncement affectsClassesExtendedInPackage: self ]