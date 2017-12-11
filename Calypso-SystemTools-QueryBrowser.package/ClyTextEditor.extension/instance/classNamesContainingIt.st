*Calypso-SystemTools-QueryBrowser
classNamesContainingIt
	"Open a browser on classes whose names contain the selected string"

	| query |
	self lineSelectAndEmptyCheck: [^self].

	query := ClyAllClasses new filteredBy: (ClyItemNameFilter substringPattern: self selection string).
	self browser spawnQueryBrowserOn: query