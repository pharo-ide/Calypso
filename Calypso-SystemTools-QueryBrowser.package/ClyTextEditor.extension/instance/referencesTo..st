*Calypso-SystemTools-QueryBrowser
referencesTo: aVariableName
	"Open a references browser on the given symbol"
	| class var |
	" ugly dispatch, but current Browser protocol names aren't really cool "
	class := self modelCurrentSelectedClass.

	class isBehavior ifTrue: [ 
		class slotNamed: aVariableName ifFound: [:slot | 
			var := ClyInstanceVariable on: slot visibleFrom: class.
			^self browser spawnQueryBrowserOn: (ClyVariableReferences of: var)]].
	
	self browser browseReferencesTo: aVariableName asSymbol from: class