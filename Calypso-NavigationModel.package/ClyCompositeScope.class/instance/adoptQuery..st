queries
adoptQuery: aQuery
	| subqueries result |
	subqueries := subscopes collect: [ :each | aQuery withScope: each ].
	result := ClyQuery unionFrom: subqueries.
	result scope name: name.
	^result