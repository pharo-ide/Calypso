execution
execute
	| result |
	result := self prepareNewResult.
	result buildWith: resultItems.
	^result