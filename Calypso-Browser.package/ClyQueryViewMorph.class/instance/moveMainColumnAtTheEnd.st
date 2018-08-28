accessing
moveMainColumnAtTheEnd

	| mainColumn |
	mainColumn := self mainColumn.
	table columns: (table columns copyWithout: mainColumn), {mainColumn}