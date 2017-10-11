execution
execute

	| scope |
	scope := ClyMethodGroupScope basis: methodGroups.
	
	browser browseMethodsFromQuery: ClyAllItemsQuery new inScopes: {scope}