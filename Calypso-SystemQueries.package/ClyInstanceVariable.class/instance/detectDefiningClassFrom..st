accessing
detectDefiningClassFrom: anUserClass

	(anUserClass slots includes: actualVariable) ifTrue: [ 
		definingClass := anUserClass.
		^self].
	
	anUserClass isRootInEnvironment ifTrue: [ 
		self error: 'Cant find the class defining variable' ].
	
	self detectDefiningClassFrom: anUserClass superclass