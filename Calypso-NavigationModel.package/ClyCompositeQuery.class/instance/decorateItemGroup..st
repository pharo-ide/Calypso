item group decoration
decorateItemGroup: groupItem
	subqueries do: [ :each | each decorateItemGroup: groupItem ]