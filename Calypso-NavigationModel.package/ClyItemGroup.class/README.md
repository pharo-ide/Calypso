I am a root of hierarchy of groups for different kind of objects.
I provide name and priority for users: 	
	ClyConcreteItemGroup named: 'a group name'.
	ClyConcreteItemGroup named: 'a group name' priority 100.
Priority is used to sort groups when they are represented by sorted query result. By default bigger priority moves group to the end of result list.

When groups are represented as browser items they are able to decorate them with specific properties: 
	aGroup decorateOwnBrowserItem: aBrowserItem

And when group is shown in the browser it can decorate table cells:
	aGroup decorateTableCell: anItemCellMorph of: groupItem
By default I decorate cell with special color when it shows readonly groups.

Any group is readonly by default. To mark editable group you should implement class side method #isEditableGroup by returning true