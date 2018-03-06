operations
openInspector
	definingClass isClassSide ifTrue: [ 
		^(actualVariable read: definingClass instanceSide) inspect].
	
	super openInspector.