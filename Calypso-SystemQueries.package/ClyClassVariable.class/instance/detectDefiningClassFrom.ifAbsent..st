accessing
detectDefiningClassFrom: anUserClass ifAbsent: aBlock

	(anUserClass instanceSide classVariables includes: actualVariable) ifTrue: [ 
		definingClass := anUserClass instanceSide.
		^self].
	
	anUserClass instanceSide sharedPools do: [ :each |
		self detectDefiningClassFrom: each ifAbsent: [].
		definingClass ifNotNil: [ ^self ] ].
	
	anUserClass isRootInEnvironment ifTrue: [ ^aBlock value ].
	
	self detectDefiningClassFrom: anUserClass superclass ifAbsent: aBlock