context
createCommandContext
	"Some subclasses needs general global context where commands can be attached
	independently from the actual internal widget under focus. 
	They should override this method returning appropriate global context instance.
	But by default it is undefined unknown context"
	
	^ClyUnknownBrowserContext of: #() for: self