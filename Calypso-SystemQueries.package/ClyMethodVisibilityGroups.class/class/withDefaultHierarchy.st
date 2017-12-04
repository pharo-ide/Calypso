instance creation
withDefaultHierarchy

	| hierarchies |
	hierarchies := OrderedCollection new.
	ClyMethodVisibilityProvider registeredInstancesDo: [ :each | 
		hierarchies add: each createHierarchy ].
	
	^self withHierarchy: (ClyMergedHierarchy merge: hierarchies)