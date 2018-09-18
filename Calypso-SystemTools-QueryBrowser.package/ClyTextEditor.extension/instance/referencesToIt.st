*Calypso-SystemTools-QueryBrowser
referencesToIt
	| selector |
	"self lineSelectAndEmptyCheck: [^ self]."
	(selector := self selectedSelector) == nil ifTrue: [^ textArea flash].
	
	self referencesTo: selector