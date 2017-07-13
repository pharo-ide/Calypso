system changes
isResult: anEnvironmentContent affectedBy: aSystemAnnouncement

	^(self isResultCanBeAffectedBy: aSystemAnnouncement)
		and: [ anEnvironmentContent isAffectedBy: aSystemAnnouncement]