*Calypso-Environment-System
includesVariablesAffectedByModificationOf: modifiedClass
	"Any class has ClassVariables which are visible from instance side and class side. That's why here we must check both class and metaclass"
	
	self instanceSide = modifiedClass instanceSide ifTrue: [ ^true ].
	self classSide = modifiedClass classSide ifTrue: [ ^true ].
	
	self isRootInEnvironment ifTrue: [ ^false ].
	
	^self superclass includesVariablesAffectedByModificationOf: modifiedClass