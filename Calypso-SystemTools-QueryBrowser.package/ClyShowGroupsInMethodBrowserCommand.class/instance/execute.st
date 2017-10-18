execution
execute

	| scope |
	scope := ClyMethodGroupScope of: methodGroups.
	
	browser browseMethodsFromQuery: ClyAllItemsQuery new inScopes: {scope}