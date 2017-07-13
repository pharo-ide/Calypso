accessing
subgroups
	"Usually this methods is main source of data for #builSubgroupItems.
	But building items here is complex algorithm. 
	So in this class we implement subgroups on top of items"
	
	^self buildSubgroupItems collect: #actualObject