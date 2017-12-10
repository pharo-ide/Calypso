execution
buildTestSuite
	
	| suite |
	suite := TestSuite new.
	
	self testMethodsDo: [ :eachMethod |
		eachMethod isFailedTest | eachMethod isErrorTest ifTrue: [ 
			suite addTest: (eachMethod origin selector: eachMethod selector)]].

	^suite