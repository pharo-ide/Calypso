execution
execute
	| traitDefinition category resultTrait |
	category := package categoryName.
	classTag ifNotNil: [ category := category , '-', classTag ].
	traitDefinition := 'Trait named: #TNameOfTrait
	uses: {}
	package: ''', category, ''''.

	traitDefinition := UIManager default 
		multiLineRequest: 'Define trait definition:'
		initialAnswer: traitDefinition
		answerHeight: 250.
	traitDefinition isEmptyOrNil ifTrue: [ ^ self ].
	resultTrait := browser 
		compileANewClassFrom: traitDefinition notifying: nil startingFrom: nil.
	resultTrait ifNotNil: [
		browser selectClass: resultTrait]