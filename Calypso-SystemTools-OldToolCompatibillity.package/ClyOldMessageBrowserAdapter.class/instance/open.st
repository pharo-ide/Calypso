opening
open
	| query browser methods |
	methods := messages 
		select: [:each | (each isRingObject and: [ each isMethod ]) or: [ each isCompiledMethod  ] ]
		thenCollect: [ :each | each compiledMethod ].
	
	query := ClyOldMessageBrowserQuery named: title with: methods.
	query
		criteriaString: autoSelect;
		criteriaBlock: refreshingBlock.
	ClyQueryBrowser openOn: query