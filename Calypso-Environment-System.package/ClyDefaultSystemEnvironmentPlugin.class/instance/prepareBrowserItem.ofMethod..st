items resolving
prepareBrowserItem: anItem ofMethod: aMethod
	
	anItem addProperty: (ClyMethodDefinitionProperty of: aMethod)