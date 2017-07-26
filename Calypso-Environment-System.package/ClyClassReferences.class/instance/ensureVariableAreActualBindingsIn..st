execution
ensureVariableAreActualBindingsIn: aSystemEnvironment

	variables := variables collect: [: each | aSystemEnvironment bindingOf: each key ]