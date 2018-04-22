tests
testGettingBrowserItemType
	
	| actual |
	actual := item calypsoBrowserType.
	
	self assert: actual equals: item class