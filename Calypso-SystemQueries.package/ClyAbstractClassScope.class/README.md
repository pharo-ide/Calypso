I am a root of class scope hierarchy.
From any class scope you are able access classes, methods and variables. 
And each kind of class scope define what exact objects are accessible.

For example ClyInstanceSideScope can only access instance side methods. While ClyClassSideScope see only class side methods.
Or ClySuperclassScope can access methods of all superclasses of basis classes. 

Class scope instances should be created on set of classes:

	ClyClassScope of: String .
	ClyClassScope ofAll: { String. Array }.

I define accessing interface which my classes should implement: 

- classesDo: aBlock 
Each scope should implement visible classes enumeration

- methodsDo: aBlock
Each scope should implement visible methodes enumeration

And methods which are based on it:

- instanceVariablesDo: aBlock
It enumerates all instance variables available from visible classes. It is not abstract method. It is based of class enumeration.

- classVariablesDo: aBlock
It enumerates all class variables available from visible classes. It is not abstract method. It is based of class enumeration.

- variablesDo: aBlock
It enumerates all available variables from visible classes. It is not abstract.

- methodGroupsDo: aBlock 
It is special method which collects and enumerates all methods groups available for given class scope using environment plugins.

The methods enumeration can be also implemented using #classesDo: logic but it would not be generally correct because I do not apply any restriction on the visible meta level of classes. 
So for given class I do not know what methods I can access: instance side or class side, or both. 
It is responsibility of my subclasses to define concrete meta level logic and implement #methodsDo: according to it. 
And to define meta level logic subclasses should implement following methods:

- metaLevelsOf: aClass do: aBlock
It should evaluate given aBlock with all meta levels of given class which are accessible from receiver. For example ClyInstanceSideScope will evaluate aBlock with instance side of aClass. And ClyBothMetaLevelClassScope will evaluate aBlock twice with instance side and class side separately.

- localScopeClass 
It should return one of ClyLocalClassScope subclasses depending on what local scope the receiver represents.

- asLocalClassScope 
It should convert the receiver to it local scope.

- withMetaLevel: aMetaLevelScopeClass
It should convert the receiver to the similar scope but which will represent given meta level. Local scopes are converted completaly to new scope class with this method.

- adoptLocalScopeClassTo: aLocalScopeClass
It should adopt receiver to the given local scope. As opposite to the previous method it supposed to modify receiver.
It is internal method to support #asScope: convertion propertly. Idea that converted class scope should keep receiver local scope if possible. And local scope itself implement this method with empty body.


