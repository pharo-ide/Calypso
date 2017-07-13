instance creation
of: aMethod
	| methodPackage methodClass definitionClass |
	methodPackage := aMethod package.
	methodClass := aMethod origin.
	methodPackage ifNil: [ methodPackage := methodClass package ]. "it happens when creation new method in trait. It should be fixed in system"
	definitionClass := methodClass instanceSide.
	
	^(self definitionItem: (ClyEnvironmentItem named: definitionClass name with: definitionClass))
		isInstanceSide: definitionClass == methodClass;
		packageItem: (ClyEnvironmentItem named: methodPackage name with: methodPackage);
		isExtension: definitionClass package ~~ methodPackage