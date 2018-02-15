*Calypso-SystemTools-QueryBrowser
methodSourceContainingIt
	"Open a browser class comments which contain the current selection somewhere in them."

	| query pattern |
	self lineSelectAndEmptyCheck: [^ self].
	pattern := self selection string.
	query := (ClyMethodSources withString: pattern), (ClyClassComments withString: pattern).
	self browser spawnQueryBrowserOn: query