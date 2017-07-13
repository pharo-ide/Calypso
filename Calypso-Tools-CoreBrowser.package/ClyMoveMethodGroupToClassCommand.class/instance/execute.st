execution
execute

	| moveCommand |
	methodGroups do: [ :each | 
		moveCommand := SycMoveMethodsToClassCommand methods: each methods class: targetClass.
		moveCommand execute.
		each removeWithMethods]