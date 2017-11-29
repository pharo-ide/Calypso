instance creation
priority: aNumber for: aBrowserContext
	"More priority value will allow command to override decorations from less priority commands"
	
	^(self for: aBrowserContext)
		priority: aNumber