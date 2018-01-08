decoration
wantsDecorateTableCellOf: aDataSourceItem
	
	| tagName |
	tagName := aDataSourceItem name asLowercase.	
	^#('see class side' 'seeclassside') 
		anySatisfy: [ :each | tagName beginsWith: each ]