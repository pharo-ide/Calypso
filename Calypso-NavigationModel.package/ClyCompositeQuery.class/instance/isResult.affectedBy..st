system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement

	^subqueries anySatisfy: [ :each | 
			each isResult: aQueryResult affectedBy: aSystemAnnouncement ]