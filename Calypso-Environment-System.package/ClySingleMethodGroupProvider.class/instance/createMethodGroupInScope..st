building groups
createMethodGroupInScope: aClassScope
	| methodQuery |
	methodQuery := self createMethodQueryInScope: aClassScope.
	
	^self createMethodGroupInScope: aClassScope for: methodQuery