tests
testFromMethodScope
	
	self 
		queryFromScope: ClyMethodScope 
		ofAll: { self class >> self targetSelector. self class >> #messageImplementor2 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> self targetSelector)