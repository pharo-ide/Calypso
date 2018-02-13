I return methods which reference given classes.
So I expect that my variableQuery will be in fact class query.
But because class itself is not a variable I convert given query to class bindings which can play role of variables in the method filtering logic:

	ClyClassReferences>>variableQuery: aClassQuery
		super variableQuery: (aClassQuery withResult: ClyClassBindings new)

And in addition I provide more readable methods to instantiate my instances from classes:

	ClyClassReferences to: aClass.
	ClyClassReferences to: aClass from: aScope.
	ClyClassReferences toAny: {Array. String}.
	ClyClassReferences toAny: {Array. String} from: aScope.