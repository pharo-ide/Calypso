testing
isFilterChanged
	"when user filters the table in the filter field 
	the table resets selection and sets the new data source.
	But existing selection will points to another original data source 
	which allows detect this event in current fast table logic"
	table initialDataSource ifNil: [ 
		"it means that filter is not used by user"
		^false ]. 
	"only way to change data source of table without affecting selection is by using filter 
	which set up new filtered data source almost on every key stroke"
	^selection rootDataSource ~~ self dataSource