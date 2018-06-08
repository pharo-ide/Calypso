navigation
allNavigationScopes
	| extraScopes |
	extraScopes := self extraScopesOfSelectedItems reject: #isBasedOnEmptyBasis.
	^queryScopes, (extraScopes copyWithoutAll: queryScopes)