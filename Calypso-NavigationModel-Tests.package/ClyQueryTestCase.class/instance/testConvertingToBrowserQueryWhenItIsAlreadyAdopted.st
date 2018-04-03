tests
testConvertingToBrowserQueryWhenItIsAlreadyAdopted

	| adoptedQuery |
	adoptedQuery := query adoptedForBrowser.
	
	self assert: adoptedQuery adoptedForBrowser == adoptedQuery