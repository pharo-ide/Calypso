testing
includesMethod: aMethod
	"Original version:
		^self methodQuery retrievesItem: aMethod
	shows bad logic behind #retrievesItem: method. It do not take into account scope of the query.
	It can be addressed in future. 
	Now we just think that argument here could not be inherited method. So the group never include it"
	^false