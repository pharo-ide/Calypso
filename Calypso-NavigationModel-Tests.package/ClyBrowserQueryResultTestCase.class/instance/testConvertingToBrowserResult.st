tests
testConvertingToBrowserResult

	| converted |
	converted := queryResult adoptedForBrowser.
	
	self assert: converted == queryResult