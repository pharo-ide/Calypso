I am special kind of query which implements NULL pattern.

I always return empty array as result and for any convertion methods I return myself.
Users should use my singleton #instance defined in class side: 	
	
	ClyUnknownQuery instance 

I am used as default query in Calypso-Browser widgets