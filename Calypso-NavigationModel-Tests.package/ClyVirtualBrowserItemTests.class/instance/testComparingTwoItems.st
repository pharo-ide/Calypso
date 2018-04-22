tests
testComparingTwoItems

	self assert: item equals: item.
	self assert: item equals: item copy.
	self assert: item hash equals: item copy hash.
	
	self deny: item equals: Object new.