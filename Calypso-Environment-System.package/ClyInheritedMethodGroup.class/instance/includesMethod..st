testing
includesMethod: aMethod
	| subclasses |
	subclasses := classes reject: [ :superclass |
		classes anySatisfy: [ :subclass | subclass inheritsFrom: superclass ]].
	
	^(subclasses includes: aMethod origin) not
		and: [ subclasses anySatisfy: [ :each | each canUnderstand: aMethod selector ] ]