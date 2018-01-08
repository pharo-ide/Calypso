event processing
affectsMethodsDefinedInPackage: aPackage

	^testCase package == aPackage or: [ aPackage extendsClass: testCase ]