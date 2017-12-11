testing
doesMethod: aMethod useVar: aVariable
	(super doesMethod: aMethod useVar: aVariable) ifTrue: [ ^true ].

	^aMethod hasSelector: aVariable name asSymbol