testing
shouldBeActivatedInContext: aBrowserContext
	aBrowserContext isClassSelected ifFalse: [ ^false ].
	(aBrowserContext lastSelectedItem hasProperty: ClyTestResultProperty) ifFalse: [ ^false ].
	
	(aBrowserContext lastSelectedClass lookupSelector: #setUp) ifNil: [ ^false ].
	"last condition is to not show this tool if user selects #setUp method manually"
	aBrowserContext isMethodSelected ifFalse: [ ^true ].	
	^aBrowserContext browser methodSelection lastSelectedItem name ~= 'setUp'