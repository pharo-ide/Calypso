testing
shouldBeActivatedInContext: aBrowserContext
	"my subclasses must define condition when they can be applied to browser.
	This method is not subclass responsibility to not break browser when new tool class is created.
	It means that by default (without this method) tool will never be shown in browser"
	^false