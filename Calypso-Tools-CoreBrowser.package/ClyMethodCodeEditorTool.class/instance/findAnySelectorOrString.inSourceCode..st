selecting text
findAnySelectorOrString: selectors inSourceCode: aText

	^(self findAnySelectorInSourceCode: selectors) 
		ifEmpty: [ self findAnyString: selectors in: aText ]