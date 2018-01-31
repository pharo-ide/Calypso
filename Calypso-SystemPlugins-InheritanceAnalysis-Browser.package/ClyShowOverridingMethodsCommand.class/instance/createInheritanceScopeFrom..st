execution
createInheritanceScopeFrom: classes

	^ClySubclassScope 
		ofAll: classes 
		in: browser navigationEnvironment