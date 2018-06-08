execution
execute
	self isAppliedToBrowser ifFalse: [ ^browser switchToPackages].
	browser isScopedModeEnabled ifTrue: [ ^browser switchToPackages ].
	
	browser switchToPackageScopeOf: browser packageSelection actualObjects