testing
retrievesItem: anObject
	^subqueries anySatisfy: [ :each | each retrievesItem: anObject ]