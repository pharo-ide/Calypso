building
buildIsDone
	self notifyObservers.
	environment systemChanged: (ClyAsyncQueryIsDone with: self)