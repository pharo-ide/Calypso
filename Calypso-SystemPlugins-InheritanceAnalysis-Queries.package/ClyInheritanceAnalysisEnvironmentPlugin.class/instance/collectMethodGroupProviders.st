method groups
collectMethodGroupProviders
	^{ClyAbstractMethodGroupProvider. ClyOverrideMethodGroupProvider. ClyOverriddenMethodGroupProvider. ClyRequiredMethodGroupProvider}
		collect: [ :each | each new]