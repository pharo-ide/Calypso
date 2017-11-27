queries
adoptQuery: aQuery
	| subqueries |
	subqueries := subscopes collect: [ :each | aQuery withScope: each ].
	^ClyQuery unionFrom: subqueries