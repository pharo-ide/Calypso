*Calypso-SystemTools-FullBrowser
browseIt
	self lineSelectAndEmptyCheck: [^ self].
	self browser browseClassNamed: (self selection string copyWithoutAll: CharacterSet crlf) trimBoth 