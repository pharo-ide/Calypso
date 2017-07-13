navigation
show: aMethodQuery inScope: anEnvironmentScope

	self changeNavigationStateBy: [
		methodQuery := aMethodQuery withResultContent: self defaultResultContent.
		self showMethodsInScope: anEnvironmentScope
	]