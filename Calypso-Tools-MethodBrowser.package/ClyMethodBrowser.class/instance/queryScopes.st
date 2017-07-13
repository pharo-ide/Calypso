accessing
queryScopes
	| extraScopes |
	extraScopes := self extraScopesOfSelectedMethods reject: #isBasedOnEmptyBasis.
	^queryScopes, (extraScopes copyWithoutAll: queryScopes)