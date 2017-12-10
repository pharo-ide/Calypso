execution
checkEmptyResult

	^self actualQuery hasResultWhere: [ :method | self selectsMethod: method ]