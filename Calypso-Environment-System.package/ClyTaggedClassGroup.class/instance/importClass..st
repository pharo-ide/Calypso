operations
importClass: aClass
	super importClass: aClass.
	
	package = aClass package ifFalse: [ package addClass: aClass ].
	aClass tagWith: self tag