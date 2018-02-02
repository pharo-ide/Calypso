printing
printContext
	package ifNil: [^super printContext].	
	classTag ifNil: [ ^package name ].
	^package name, ' / ' , classTag