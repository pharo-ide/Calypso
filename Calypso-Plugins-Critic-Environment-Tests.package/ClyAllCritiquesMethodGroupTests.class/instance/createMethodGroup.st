running
createMethodGroup
	analyzedClass := ClyAnalyzedClassStub new.
	^ClyAllCritiquesMethodGroup classes: { analyzedClass }