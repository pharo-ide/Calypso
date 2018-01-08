item decoration
decorateBrowserItem: anItem ofMethod: aMethod
	
	anItem ensureSystemDefinition: [ClyMethodDefinitionProperty of: aMethod]