opening
openOn: aNavigationEnvironment systemScope: aSystemScope
	| browser |
	browser := self on: aNavigationEnvironment systemScope: aSystemScope.
	browser open.
	^browser