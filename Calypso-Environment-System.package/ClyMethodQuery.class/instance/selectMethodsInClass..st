execution
selectMethodsInClass: aClass

	^aClass localMethods select: [ :method | self selectsMethod: method  ]