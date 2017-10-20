method groups
collectMethodGroupProvidersFor: classes
	^{ClyAbstractMethodGroupProvider. ClyOverrideMethodGroupProvider. ClyOverriddenMethodGroupProvider. ClyRequiredMethodGroupProvider}
		collect: [ :each | each new]