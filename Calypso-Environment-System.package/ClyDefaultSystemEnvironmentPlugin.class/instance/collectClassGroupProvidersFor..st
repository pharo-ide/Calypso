method groups
collectClassGroupProvidersFor: aPackage

	^{ClyExtendedClassGroupProvider. ClyTaggedClassGroupProvider}
		collect: [ :each | each package: aPackage ]