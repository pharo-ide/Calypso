accessing
allQueryScopes
	| extraScopes |
	extraScopes := self extraScopesOfSelectedItems reject: #isBasedOnEmptyBasis.
	^queryScopes, (extraScopes copyWithoutAll: queryScopes)