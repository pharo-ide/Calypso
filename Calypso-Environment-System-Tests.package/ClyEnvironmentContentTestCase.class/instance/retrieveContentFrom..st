helpers
retrieveContentFrom: aConcreteEnvironment
	cursor := aConcreteEnvironment query: self contentClass.
	items := cursor retrieveAll.
	actualObjects := cursor retrieveAllActualObjects asArray