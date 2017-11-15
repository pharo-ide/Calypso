method groups
collectMethodGroupProviders 

	^{ClyInheritedMethodGroupProvider. ClyTaggedMethodGroupProvider. ClyExtendedMethodGroupProvider}
		collect: [ :each | each new ]