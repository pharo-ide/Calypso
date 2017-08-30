*Calypso-Tools-SystemBrowser
browseClassNamed: aString
	
	| classBinding browser |
	classBinding := self system bindingOf: aString.
	classBinding ifNil: [ ^self ].
	
	browser := ClySystemBrowser on: navigationEnvironment systemScope: self systemScope.
	browser disablePluginsWhichAreNotIn: self.
	browser selectClass: classBinding value.
	
	browser open