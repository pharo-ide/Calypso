refactoring support
refactoringScopes
	"It returns default browser scope as first one which makes it default for users"
	| allScopes defaultScope |
	allScopes := tool allNavigationScopes.
	defaultScope := tool defaultNavigationScope.
	^(allScopes copyWithout: defaultScope) copyWithFirst: defaultScope