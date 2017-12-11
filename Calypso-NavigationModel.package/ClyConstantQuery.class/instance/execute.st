execution
execute
	| result |
	result := self prepareResultIn: scope environment.
	result initializeItems.
	self buildResult: result.
	^result