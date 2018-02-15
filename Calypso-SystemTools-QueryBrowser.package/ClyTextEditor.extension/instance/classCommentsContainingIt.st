*Calypso-SystemTools-QueryBrowser
classCommentsContainingIt
	"Open a browser class comments which contain the current selection somewhere in them."

	| query |
	self lineSelectAndEmptyCheck: [^ self].

	query := ClyClassComments withString: self selection string.
	self browser spawnQueryBrowserOn: query