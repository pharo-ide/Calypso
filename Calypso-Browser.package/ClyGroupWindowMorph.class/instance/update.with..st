updating
update: aSymbol  with: anObject
	"Handle tab changes."

	super update: aSymbol with: anObject.
	self updateMainWindowTitle 