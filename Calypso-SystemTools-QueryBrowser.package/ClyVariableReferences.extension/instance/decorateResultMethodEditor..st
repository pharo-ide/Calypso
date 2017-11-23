*Calypso-SystemTools-QueryBrowser
decorateResultMethodEditor: aMethodEditor
	| vars |
	vars := variableQuery execute items.
	
	aMethodEditor selectAnyVariable: (vars collect: [:each | each name])