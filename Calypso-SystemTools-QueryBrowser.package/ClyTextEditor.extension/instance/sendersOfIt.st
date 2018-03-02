*Calypso-SystemTools-QueryBrowser
sendersOfIt
	| selector |
	
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSelector) == nil ifTrue: [^ textArea flash].
	
	self sendersOf: selector 