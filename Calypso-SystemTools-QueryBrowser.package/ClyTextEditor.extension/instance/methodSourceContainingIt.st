*Calypso-SystemTools-QueryBrowser
methodSourceContainingIt
	"Open a browser class comments which contain the current selection somewhere in them."

	| query |
	self lineSelectAndEmptyCheck: [^ self].

	query := ClyMethodSources withString: self selection string.
	self browser spawnQueryBrowserOn: query async