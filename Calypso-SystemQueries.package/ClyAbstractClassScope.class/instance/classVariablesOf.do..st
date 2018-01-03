private
classVariablesOf: definingClass do: aBlock
	"Class variables are visible from any meta level of declaring class.
	But we can retrieve them only from instance side of given class"
	definingClass instanceSide classVariables associationsDo: [:var | 
		aBlock value: (ClyClassVariable on: var definedIn: definingClass instanceSide)]