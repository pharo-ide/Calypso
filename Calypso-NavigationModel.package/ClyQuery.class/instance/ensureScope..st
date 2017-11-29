accessing
ensureScope: aScope
	scope == ClyScope unknown ifTrue: [ ^self scope: aScope ].
	
	scope == aScope ifFalse: [ 
		self error: 'Scope modification is forbidden. Query is bound to scope forever' ]