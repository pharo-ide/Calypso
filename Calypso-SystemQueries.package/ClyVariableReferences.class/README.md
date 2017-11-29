I am a query to retrieve methods which reference one of the given variables.
I have subclases which define specific meaning of reference like only readers or only writers. They redefine method #isMethod:referencedVar: for this.

To retrieve inst var references you can create me using:
	ClyVariableReferences of: {ClyInstanceVariable named: #x declaredIn: Point}.
My variables are represented by first class objects like ClyInstanceVariable, GlobalVariable or ClassVariable. So you can use me to query class references too:
	ClyVariableReferences of: {Point binding}.
But to make such queries more explicit and friendly there is separate ClyClassReferences query. Look at it for details.

Internal Representation and Key Implementation Points.

    Instance Variables
	variables:		<ClyInstanceVariable or: LiteralVariable>