testing
selectsMethod: aMethod
	| plugin |
	plugin := self environment getPlugin: ClyReflectiveEnvironmentPlugin.
	^plugin doesMethodHasWatchpoint: aMethod