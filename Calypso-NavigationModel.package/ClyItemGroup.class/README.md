I am a root of hierarchy of groups for different kind of environment items.

All groups should define name in method #name.
All groups could define specific priority to affect order in multiple groups list. Bigger priority moves group to the start of list.

When groups are retrieved from environment they resolve specific properties for items.
By default I add type property with class of group:
	ClyGroupItem>>resolvePropertiesOf: myEnvironmentItem
		myEnvironmentItem type: self class
(read ClyEnvironmentItemTypeProperty comment for details)
My subclasses override this method for more specific information.

I define notion of "managed by user" which is false by default
	ClyGroupItem>>isManagedByUser
		^false
If it is true then group is created by user itself. But if it is false then group is computed on some really virtual properties of system.
For example ClyTaggedClassGroup or ClyTaggedMethodGroup are managed by users. They group objects which are marked by same tag. User do not create this groups but he tag objects exactly for such goal: to group them. 

Tools can use this property to represent groups in special way.