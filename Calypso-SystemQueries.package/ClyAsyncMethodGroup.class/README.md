I represent method group based on async method query.
I am decorated in the browser with animation indicating background query processing.

My instances are usually created from another method group using converting method: 

	aMethodGroup asAsyncQueryGroup

I hold reference to async query result. So it is kept in memory together with my instance.

Internal Representation and Key Implementation Points.

    Instance Variables
	asyncQueryResult:		<ClyAsyncQueryResult>
