tests
testOneTwo
	| testedObject |
	testedObject := self newTestedObject one: #one two: #two.
	self
		assert: testedObject one = #one;
		assert: testedObject two = #two;
		assert: (testedObject one: #three two: #four) == testedObject;
		assert: testedObject one = #three;
		assert: testedObject two = #four;
		assert: (testedObject oneTwo: #five) == testedObject;
		assert: testedObject one = #three;
		assert: testedObject two = #five