helpers
retrieveContentFrom: aConcreteEnvironment
	cursor := aConcreteEnvironment query: (self createQuery withResultContent: self contentClass).
	items := cursor retrieveAll.
	actualObjects := cursor retrieveAllActualObjects asArray