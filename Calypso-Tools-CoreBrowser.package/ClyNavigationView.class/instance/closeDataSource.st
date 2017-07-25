controlling
closeDataSource
	self dataSource ifNotNil: [ :ds | ds close ].
	table initialDataSource ifNotNil: [:ds | 
		ds ~~ self dataSource ifTrue: [ ds close ].
		table resetInitialDataSource ]