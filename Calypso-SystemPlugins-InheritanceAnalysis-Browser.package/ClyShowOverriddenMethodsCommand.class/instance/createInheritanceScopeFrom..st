execution
createInheritanceScopeFrom: classes

	^ClySuperclassScope 
		ofAll: classes 
		in: browser navigationEnvironment 
		localScope: ClyBothMetaLevelClassScope 