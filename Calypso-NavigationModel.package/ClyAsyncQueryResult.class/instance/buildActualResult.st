building
buildActualResult

	actualResult rebuild.
	items := actualResult items.
	metadata properties: actualResult metadata properties copy.
	buildProcess := nil.
	self notifyObservers