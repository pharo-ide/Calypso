opening/closing
openAnotherBrowser: aBrowser
	(aBrowser isKindOf: ClyQueryBrowser)
		ifTrue: [ aBrowser openInWindow: self window]
		ifFalse: [ aBrowser open ]