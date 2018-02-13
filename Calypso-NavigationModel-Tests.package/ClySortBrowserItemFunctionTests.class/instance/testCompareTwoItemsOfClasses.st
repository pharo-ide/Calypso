tests
testCompareTwoItemsOfClasses

	function := ClySortBrowserItemFunction with: ClySortByNameFunction ascending.
	
	self deny: (function value: Object asCalypsoBrowserItem value: Array asCalypsoBrowserItem).
	self assert: (function value: Array asCalypsoBrowserItem value: Object asCalypsoBrowserItem).
	self assert: (function value: Object asCalypsoBrowserItem value: Object asCalypsoBrowserItem).