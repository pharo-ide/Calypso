item decoration
isTestClass: aClass
	
	^aClass isTestCase or: [ 
		"Following logic is to detect tests from traits but without explicit dependency. 
		So we think that traits are test classes if they are used in test cases"
		aClass users anySatisfy: [ :eachUser | self isTestClass: eachUser ] ]