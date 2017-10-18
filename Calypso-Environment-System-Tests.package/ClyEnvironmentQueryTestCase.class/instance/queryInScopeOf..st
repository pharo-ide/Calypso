tests
queryInScopeOf: objects

	| resultCursor |
	resultCursor := environment query: query inScope: (ClyEnvironmentScope of: objects).
	result := resultCursor observedContent.
	resultItems := result items