execution
ensureVariableAreActualBindingsIn: aSystemEnvironment

	variableQuery := variableQuery collect: [: each | aSystemEnvironment bindingOf: each key ]