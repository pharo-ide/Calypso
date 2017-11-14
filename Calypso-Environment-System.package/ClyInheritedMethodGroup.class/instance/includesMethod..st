testing
includesMethod: aMethod
	| subclasses |
	subclasses := classScope reject: [ :superclass |
		classScope anySatisfy: [ :subclass | subclass inheritsFrom: superclass ]].
	
	^(subclasses includes: aMethod origin) not
		and: [ subclasses anySatisfy: [ :each | each canUnderstand: aMethod selector ] ]