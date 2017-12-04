accessing
defaultHierarchy
	^defaultHierarchy ifNil: [defaultHierarchy := ClySubclassHierarchy inverse]