controlling
warnUserAboutChangedContext

	self belongsToCurrentBrowserContext
		ifTrue: [ self warnUserAboutMyContext ]
		ifFalse: [ self warnUserAboutDifferentContext ]