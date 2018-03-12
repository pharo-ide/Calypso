tests
testComparisonWithAnotherAdapterOverDifferentResult

	| anotherResult |
	queryResult := self createQueryResult.
	anotherResult := queryResult class on: #anotherKindOfResult.

	self deny: queryResult = anotherResult