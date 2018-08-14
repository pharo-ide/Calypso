*Calypso-SystemTools-FullBrowser
browseIt
	"self lineSelectAndEmptyCheck: [^ self]."
	self browser browseClassNamed: (self findClassFromAST ifNil: [ ^self ])