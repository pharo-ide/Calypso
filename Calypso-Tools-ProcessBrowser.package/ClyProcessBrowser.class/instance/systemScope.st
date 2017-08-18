accessing
systemScope
	^systemScope ifNil: [systemScope := navigationEnvironment systemScope]