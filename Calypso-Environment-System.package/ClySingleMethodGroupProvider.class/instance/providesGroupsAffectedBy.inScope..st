system changes
providesGroupsAffectedBy: aSystemAnnouncement inScope: aClassScope

	| query |
	query := self createMethodQueryInScope: aClassScope.
	^query isResult: ClyUnknownQueryResult default affectedBy: aSystemAnnouncement