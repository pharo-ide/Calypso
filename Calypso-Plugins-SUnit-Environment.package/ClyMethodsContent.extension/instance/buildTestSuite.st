*Calypso-Plugins-SUnit-Environment
buildTestSuite

	| suite |
	suite := TestSuite new.
	
	self testMethodsDo: [ :eachMethod |
		suite addTest: (eachMethod origin selector: eachMethod selector)].

	^suite