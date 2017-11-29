instance creation
of: aSystem in: aNavigationEnvironment named: aString

	^(super of: { aSystem } in: aNavigationEnvironment)
		name: aString