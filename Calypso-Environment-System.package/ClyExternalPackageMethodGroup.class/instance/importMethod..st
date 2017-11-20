operations
importMethod: aMethod 
	super importMethod: aMethod.
	
	self package addMethod: aMethod.	
	aMethod tagWith: ('*', self package name) asSymbol