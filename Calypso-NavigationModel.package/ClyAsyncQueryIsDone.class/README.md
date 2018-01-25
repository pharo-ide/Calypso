I am announcing the async query completion.
Every async query announces me at the end of execution when result is completelly built.

To create instance use: 

	ClyAsyncQueryIsDone with: anAsyncQueryResult
 
Internal Representation and Key Implementation Points.

    Instance Variables
	queryResult:		<ClyAsyncQueryResult>