execution
installedMethods

	| onlyMethods actualMethods |
	onlyMethods := methods select: [ :each | each isCompiledMethod ].
	
	actualMethods := self filterInstalledMethods: onlyMethods, extraMethods.
	^actualMethods, (methods reject: [ :each | each isCompiledMethod ])