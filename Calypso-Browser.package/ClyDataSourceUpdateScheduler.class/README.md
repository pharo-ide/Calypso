I organize scheduled updates of data sources.
Idea to always defer update of browser until current UI command will be completelly done. 
It ensures that browser updates will not affect general performance of basic operations which modifies system because any update will be just queued and processes in low priority process when there will be time for this.

My single instance is created by ClyDataSource as shared class variable UpdateScheduler.
Data sources register themselfs for updates when they receives event that items were changed: 
	
	UpdateScheduler register: aDataSource.
	 
In addition actual update is executed in UI process using standart deferring logic: 

	UIManager default defer: [ next runUpdate ]

But this deferring is triggered from low priority process.

Internal Representation and Key Implementation Points.

    Instance Variables
	process:		<Process>
	updateQueue:		<AtomicSharedQueue>