updating
updateInNewContext: aBrowserContext
	self context: aBrowserContext.
	self warnUserAboutChangedContext.
	self isBuilt ifTrue: [
		"tools build happens in background 
		and it is possible to be notifyed about change before build completes"
		self update]