tests
testComparisonWithAnotherFunction

	| function2 |
	function := ClySortBrowserItemFunction with: ClySortByNameFunction ascend.
	function2 := ClySortBrowserItemFunction with: ClySortByNameFunction ascend.
	
	self assert: function equals: function2.
	self assert: function hash equals: function2 hash.
	
	function2 := ClySortBrowserItemFunction with: ClySortByNameFunction descend.
	self deny: function = function2.