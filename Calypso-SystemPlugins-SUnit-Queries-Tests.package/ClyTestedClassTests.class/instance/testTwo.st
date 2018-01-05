tests
testTwo
	| testedObject |

	testedObject := self newTestedObject.
	self
		assert: testedObject two isNil;
		assert: (testedObject two: #two) == testedObject;
		assert: testedObject two = #two.