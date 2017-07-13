*Calypso-Tools-MethodBrowser
referencesToIt
	| selector |
	self lineSelectAndEmptyCheck: [^ self].
	(selector := self selectedSelector) == nil ifTrue: [^ textArea flash].
	
	self browser browseReferencesTo: selector