opening
openOn: aProcess from: aNavigationEnvironment

	^(self on: aNavigationEnvironment)
		showStackOf: aProcess;
		open