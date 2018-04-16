*Calypso-SystemTools-FullBrowser
browseIt
	| className |
	self lineSelectAndEmptyCheck: [^ self].
	
	className := self findClassFromAST.
	className isEmptyOrNil ifTrue: [ textArea flash. ^self ]. 
	
	self browser browseClassNamed: className