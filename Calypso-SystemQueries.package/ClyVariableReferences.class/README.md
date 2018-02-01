I return all methods which reference one of the variables retrieved by given variableQuery.

To create my instance use following expressions: 

	ClyVariableReferences toVariablesFrom: aVariableQuery.
	ClyVariableReferences from: aScope toVariablesFrom: aVariableQuery.

Query argument here is supposed return variables, instances of ClyVariable subclasses. So it can be complex query instead of concrete variable query.
  
And for simple cases there is another set of expressions when you need references to existing list of variables: 
	
	ClyVariableReferences of: aVariable.
	ClyVariableReferences of: aVariable from: aScope.
	
	ClyVariableReferences ofAny: { 
		ClyInstanceVariable named: #x definedIn: Point.
		ClyInstanceVariable named: #y definedIn: Point}.
	ClyVariableReferences ofAny: variables from: aScope.

Variables here are represented by subclasses of ClyVariable. 
		
I have few subclases which define specific meaning of reference like only readers or only writers. They redefine method #doesMethod:useVar: for this purpose.

Internal Representation and Key Implementation Points.

    Instance Variables
	variableQuery:		<ClyVariableQuery>