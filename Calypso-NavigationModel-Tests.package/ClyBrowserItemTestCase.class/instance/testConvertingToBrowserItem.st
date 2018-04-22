tests
testConvertingToBrowserItem
	
	| actual |
	actual := item asCalypsoBrowserItem.
	
	self assert: actual == item