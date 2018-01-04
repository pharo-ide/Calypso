script detection
isImplementedByMethod: aMethod
	"Subclasses should override it.
	The method is not abstract to not corrupt browser if new script is not completelly implemented"
	^false