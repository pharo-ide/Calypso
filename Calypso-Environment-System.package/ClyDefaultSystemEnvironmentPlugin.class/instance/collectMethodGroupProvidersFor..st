method groups
collectMethodGroupProvidersFor: classes 

	^{ClyInheritedMethodGroupProvider. ClyTaggedMethodGroupProvider. ClyExtendedMethodGroupProvider}
		collect: [ :each | each classes: classes ]