method groups
collectClassGroupProviders

	^{ClyExtendedClassGroupProvider. ClyNoTagClassGroupProvider. ClyTaggedClassGroupProvider}
		collect: [ :each | each new]