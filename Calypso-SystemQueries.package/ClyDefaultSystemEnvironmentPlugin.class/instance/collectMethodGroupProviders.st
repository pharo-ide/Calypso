method groups
collectMethodGroupProviders 

	^{ClyInheritedMethodGroupProvider. ClyTaggedMethodGroupProvider. ClyUnclassifiedMethodGroupProvider. ClyExtendedMethodGroupProvider}
		collect: [ :each | each new]