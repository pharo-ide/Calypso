tests
testOne
	| testedObject |

	testedObject := self newTestedObject.
	self
		assert: testedObject one isNil;
		assert: (testedObject one: #one) == testedObject;
		assert: testedObject one = #one.