I am a root of hierarchy of method groups.

Any method group is created on set of classes:
	ClyMethodGroup classes: {Point. Collection}
 
My subclasses decide what methods should be extracted from classes. They should implement #includesMethod: for this. I define public API in terms of it: 
	- methods 
	- methodsSize
	- includesMethodsAffectedBy: aMethodAnnouncement. It check all affected methods by #canIncludeMethod: criteria.
	- canIncludeMethod: aMethod. It is less restrictive version of #includesMethod: which is same by default. This method is used to detect if group was modified due to given method change. In such case modified method can not satisfy strong restriction of #includesMethod:. But at the time before change original method can belongs to group. For some kind of groups only way to detect change is matching method by less restrictions.
	 
My subclasses can redifine these methods differently to achieve better performance for example.

My subclasses can have subgroups. In tools they will be shown in tree. 
To define subgroups few methods should be implemented:
	- hasSubgroups
	- subgroups
	- buildSubgroupItems
I provide implementation for last method based on #subgroups. But for specific needs like optimization it can be redefined.

Subgroups can belongs to specific environment scope. By default it is original ClyMethodGroupScope. But subclasses can override it with more specific one:
	ClyMethodGroup>>subgroupEnvironmentScope
		^ClyMethodGroupScope
	ClyVariablesRelatedMethodGroup>>subgroupEnvironmentScope
		^ClyVariableScope

I provide default support for system changes. My subclasses override following methods when needed:
	- isAffectedByClassChange: aClassAnnouncement. It returns false by default
	- isAffectedByPackageChange: aPackageAnnouncement. It returns false by default
	- includesMethodsAffectedBy: aMethodAnnouncement. It is described above.

Internal Representation and Key Implementation Points.

    Instance Variables
	classes:		<Collection of:<Class>>