I run my subquery using background process.
I do not implement #buildResult: as other queries. 
Instead I return special ClyAsyncQueryResult instance to represent result of execution. 
Async result overrides building logic in the way that it forks actual query execution and updates itself when execution completes. For details look at this class.
So I only implement hook which triggers background execution of actual query.

Any query can be converted to async query using:

	aQuery async 
	
It returns instance of me. And in case when I am receiver I just return myself.

There is special mode to emulate sync execution of fast queries. To activate it use #semyAsync message instead of simple #async: 

	aQuery semiAsync 

It will return my instance configured with ClySemiAsyncQueryResult. So during execution it will be used instead of simple ClyAsyncQueryResult.
The idea of semi async execution is to wait half seconds until query will be executed. If this time is enough (which is true for fast queries) then for users it will look like normal syncronous execution. But otherwise it will be asyncronous execution and returned result will indicate progress.

The concrete type of async result is holden in asyncResult variable.

While I am executed users can check the execution state. A ClyAsyncQueryResult is returned from #execute method which can be checked for the status:

	aQuery execute isBuilt
	
It returns true only when execution is completed.

For the empty test (#checkEmptyResult) I always return false when execution is still in progress. Idea that we do not know exactly if result would be empty or not. And for many scenarios it is convenient to get false in that case.

Internal Representation and Key Implementation Points.

    Instance Variables
	asyncResult:		<ClyAsyncQueryResult>