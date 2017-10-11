*Calypso-SystemTools-QueryBrowser
implementorsOfIt
	| selector |
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSelector) == nil ifTrue: [^ textArea flash].
	
	self browser browseImplementorsOf: selector