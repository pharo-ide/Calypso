*Calypso-SystemTools-OldToolCompatibillity
selectStringAsInMessageBrowser: criteriaString

	| interval |
	interval := (self findAnySelectorInSourceCode: {criteriaString}) 
			ifEmpty: [ self findString: criteriaString asSelectorIn: self pendingText].
	textMorph setSelection: interval