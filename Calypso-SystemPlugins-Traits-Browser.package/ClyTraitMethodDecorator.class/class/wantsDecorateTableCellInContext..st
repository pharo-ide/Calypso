testing
wantsDecorateTableCellInContext: methodItemContext
	"Idea is to decorate trait methods only when browser do not selects their origin"
	| definingClass |
	(super wantsDecorateTableCellInContext: methodItemContext) ifFalse: [ ^false ].
	
	methodItemContext isClassSelected ifFalse: [ ^false ].
	definingClass := methodItemContext selectedMethodItems last systemDefinition definingClassItem.
	
	(definingClass isMarkedWith: ClyTraitTag) ifFalse: [ ^false ].
	 
	^methodItemContext lastSelectedClass ~~ definingClass actualObject