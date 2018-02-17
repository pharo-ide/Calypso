controlling
restoreBrowserState
	package ifNil: [ ^self].
	
	classTag 
		ifNil: [ browser selectPackage: package]
		ifNotNil: [ browser selectPackage: package atClassTag: classTag ]