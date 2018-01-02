method groups
collectMethodGroupProviders
	^{ClyAbstractMethodGroupProvider. ClyOverridingMethodGroupProvider. ClyOverriddenMethodGroupProvider. ClyRequiredMethodGroupProvider}
		collect: [ :each | each new]