tests
testFillingWithTwoSameClasses

	queryResult fillWith: { ClyClass1FromP1. ClyClass1FromP1 }.

	self assertItems: { ClyClass1FromP1. 0 }