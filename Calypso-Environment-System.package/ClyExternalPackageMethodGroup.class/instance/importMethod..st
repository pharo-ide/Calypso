operations
importMethod: aMethod 
	super importMethod: aMethod.
	
	package addMethod: aMethod.	
	aMethod tagWith: ('*', package name) asSymbol