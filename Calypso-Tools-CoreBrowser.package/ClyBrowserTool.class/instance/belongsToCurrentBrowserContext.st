testing
belongsToCurrentBrowserContext
	"my subclasses must define condition which means that tool has context which is the same as current browser context.
	This method is not subclass responsibility to not break browser when new tool class is created"
	^true