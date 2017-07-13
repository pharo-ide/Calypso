I am used to add class of object directly into environment item. 
It is needed to optimize remote communication between client and remote environment object. Some client tools need to talk with class of remote object. And to not request class from remote side it could be sent together with item properties.
For example it is used for method groups to represent them specifically depending on group type. 

You can create my instances by: 
	ClyEnvironmentItemTypeProperty itemType: aClass

But there are suitable methods on ClyEnvironmentItem: 
	- item type
	- item type: aClass

I cache all my instances. I use class variable "Types" to ensure single property instance for each concrete class. 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	itemType:		<Class>