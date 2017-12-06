system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aClassScope

	| query |
	query := self createMethodQueryFrom: aClassScope.
	^query isResult: ClyUnknownQueryResult instance affectedBy: aSystemAnnouncement