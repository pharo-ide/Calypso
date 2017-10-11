opening
openOn: aNavigationEnvironment

	| browser |
	browser := self on: aNavigationEnvironment.
	browser open.	
	^browser