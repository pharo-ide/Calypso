navigation
allNavigationScopes
	
	| defaultScope |
	defaultScope := self defaultNavigationScope.
	
	^self systemScope = defaultScope 
		ifTrue: [ {self systemScope} ]
		ifFalse: [ { self systemScope. defaultScope } ]