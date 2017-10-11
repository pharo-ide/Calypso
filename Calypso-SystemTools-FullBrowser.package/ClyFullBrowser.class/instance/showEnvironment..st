navigation
showEnvironment: aNavigationEnvironment

	navigationEnvironment := aNavigationEnvironment.

	self switchToPackages.
	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]