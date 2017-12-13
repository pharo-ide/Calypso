building
buildActualResult
	"The loop here prevents the race condition when actual query is just executed 
	but system is changed and this change reset built result which means nil returned from #items.
	In that case we just repeat query again"
	[actualResult := buildingQuery execute.
	(items := actualResult items) isNil] whileTrue.
	self collectMetadata.
	buildProcess := nil.
	self notifyObservers.
	environment systemChanged: (ClyAsyncQueryIsDone with: self)