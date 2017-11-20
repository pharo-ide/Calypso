method groups
collectClassGroupProviders

	^{ClyExtendedClassGroupProvider. ClyTaggedClassGroupProvider}
		collect: [ :each | each new ]