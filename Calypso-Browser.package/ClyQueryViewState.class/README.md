I represent the state of particular query view.
I keep data source and current selection of view.

I am supposed to not keep reference to the result of data source query.
So when I am initialized I ask data source for clean copy: 

	aQueryView dataSource copyForBrowserStateSnapshot.

And I convert current view selection to desired selection and clean it by detaching items from active data source.
Look at method #initializeFrom: for details.

My instances are created from query views: 

	ClyQueryViewState of: aQueryView

Or simply ask 
	
	aQueryView snapshotState
	
Internal Representation and Key Implementation Points.

    Instance Variables
	dataSource:		<ClyDataSource>
	selection:		<ClyDesiredDataSource>