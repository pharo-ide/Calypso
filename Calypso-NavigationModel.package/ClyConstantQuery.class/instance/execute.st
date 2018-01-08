execution
execute
	| result |
	result := self prepareNewResult.
	result initializeItems.
	self buildResult: result.
	^result