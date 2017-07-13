system changes
includesVariablesAffectedBy: aSystemAnnouncement

	^basisObjects anySatisfy: [ :class | 
		aSystemAnnouncement affectsVariablesOf: (self resolveClass: class)]