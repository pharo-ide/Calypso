opening
open
	| query methods comments |
	methods := messages 
		select: [:each | (each isRingObject and: [ each isMethod ]) or: [ each isCompiledMethod  ] ]
		thenCollect: [ :each | each compiledMethod ].
	comments := messages 
		select: [:each | each isRingObject and: [ each isComment  ]]
		thenCollect: [ :each | ClyClassComment of: each parent realClass ].
	query := ClyOldMessageBrowserQuery named: title with: methods asOrderedCollection, comments.
	query
		criteriaString: autoSelect;
		criteriaBlock: refreshingBlock.
	ClyQueryBrowser openOn: query