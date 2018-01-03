testing
representsConcreteQuery
	"this method allows to detect that browser is in state when it not shows any concrete content at any of panels. It is happens when browser was not requested to show anything yet"
	
	^(viewStates allSatisfy: [ :each | each representsConcreteQuery not ]) not