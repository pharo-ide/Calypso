initialization
setUpTargetClasses

	targetClasses := browser chooseClassesForNewMethod.
	(targetClasses includes: methodClass) ifFalse: [ 
		targetClasses := {methodClass}, targetClasses ]