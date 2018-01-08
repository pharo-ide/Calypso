building groups
buildGroupsFrom: aClassScope

	| methodQuery methodGroup |
	methodQuery := self createMethodQueryFrom: aClassScope.
	(self shouldBuildGroupWith: methodQuery) ifFalse: [ ^#() ].
		
	methodGroup := self createMethodGroupFor: methodQuery from: aClassScope.
	methodQuery isAsync ifTrue: [ methodGroup := methodGroup asAsyncQueryGroup ].
	
	^Array with: methodGroup