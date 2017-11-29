running
createMethodGroup
	analyzedClass := ClyAnalyzedClassStub new.
	^ClyAllCritiquesMethodGroup classScope: { analyzedClass }