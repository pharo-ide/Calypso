execution
execute

	| debugger |
	debugger := ClyDebugger new.
	debugger showStackOf: process inEnvironment: environment.
	debugger open