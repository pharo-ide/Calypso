building
buildActualResult

	actualResult := actualQuery execute.
	items := actualResult items.
	metadata properties: actualResult metadata properties copy.
	buildProcess := nil.
	self notifyObservers