tests
testActualItemsEnumeration

	| enumerated |
	queryResult itemBuffer: {
		ClyBrowserItem with: #a. ClyBrowserItem with: #b. ClyBrowserItem with: #c}.

	enumerated := OrderedCollection new.
	queryResult actualItemsDo: [:each :index | enumerated add: each -> index] .
	
	self assert: enumerated asArray equals: { #a->1. #b->2. #c->3 }