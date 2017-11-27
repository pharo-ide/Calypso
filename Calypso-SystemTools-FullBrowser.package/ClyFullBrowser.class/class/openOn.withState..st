opening
openOn: aNavigationEnvironment withState: navigationBlock

	| browser |
	browser := self on: aNavigationEnvironment.
	browser prepareInitialStateBy: navigationBlock.
	browser open.	
	^browser