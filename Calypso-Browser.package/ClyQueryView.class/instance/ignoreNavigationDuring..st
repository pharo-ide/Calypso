controlling
ignoreNavigationDuring: aBlock

	| selector |
	selector := navigationSelector.
	navigationSelector := nil.
	aBlock ensure: [ navigationSelector := selector ]