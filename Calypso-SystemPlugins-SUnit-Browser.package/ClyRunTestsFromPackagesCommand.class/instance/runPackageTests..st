execution
runPackageTests: aPackage
	| testResult testClasses |
	testClasses := aPackage definedClasses 
		select: [ :each | each isTestCase and: [ each isAbstract not ] ].
	testClasses 
		ifEmpty: [testResult := TestAsserter classForTestResult new]
		ifNotEmpty: [ testResult := testClasses anyOne classForTestResult new].
		
	testClasses do: [ :each | self runTestCase: each results: testResult].		
	testResult updateResultsInHistory.	
	self  
		notifyUserAboutResults: testResult 
		with: aPackage asPackageName