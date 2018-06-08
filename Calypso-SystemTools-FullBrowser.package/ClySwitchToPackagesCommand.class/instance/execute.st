execution
execute
	self isAppliedToBrowser ifFalse: [ ^browser switchToPackages].
	browser isScopedModeEnabled ifTrue: [ ^browser switchToPackages ].

	browser packageSelection actualObjects ifNotEmpty: [ :packages |
		browser switchToPackageScopeOf: packages]