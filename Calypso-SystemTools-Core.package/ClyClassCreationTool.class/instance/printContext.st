printing
printContext
	classTag ifNil: [ ^package name ].
	^package name, ' / ' , classTag