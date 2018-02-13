tests
testComparisonWithAnotherFunction

	| function2 |
	function := ClySortBrowserItemFunction with: ClySortByNameFunction ascending.
	function2 := ClySortBrowserItemFunction with: ClySortByNameFunction ascending.
	
	self assert: function equals: function2.
	self assert: function hash equals: function2 hash.
	
	function2 := ClySortBrowserItemFunction with: ClySortByNameFunction descending.
	self deny: function = function2.