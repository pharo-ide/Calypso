*Calypso-SystemTools-PackageBrowser
browseIt
	self lineSelectAndEmptyCheck: [^ self].
	self browser browseClassNamed: (self selection string copyWithoutAll: CharacterSet crlf) trimBoth 