I am a root of hierarchy of method groups related to concrete set of variables. I bound variables which are only declared by concrete class.

I define subgroups which arrange ClyVariableScope instead of ClyMethodGroupScope:
	ClyVariablesRelatedMethodGroup>>subgroupEnvironmentScope
		^ClyVariableScope
 
Internal Representation and Key Implementation Points.

    Instance Variables
	declarationClass:		<aClass>