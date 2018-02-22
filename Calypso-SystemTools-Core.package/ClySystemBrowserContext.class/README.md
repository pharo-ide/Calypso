I am a root of contexts hierarchy which represent the state of any kind of system browsers.

I define main interface to check the browser state:  

- For packages: 
	
	- selectedPackages 
	- lastSelectedPackage
	- isPackageSelected
	
- For classes 

	- selectedClasses 
	- lastSelectedClass
	- isClassSelected

- For methods 

	- selectedMethods 
	- lastSelectedMethod
	- isMethodSelected

- For messages 

	- selectedMessages 
	- lastSelectedMessage
	- isMessageSelected

Message is a selector+arguments. Any method defines correspondant message. So it allows to have polymorphic interface to work with messages like in the source code editor. 

In addition I provide tool controlling methods: 

- showClass: aClass
- showMethod: aMethod 
- showMessage: aMessage renamedTo: newSelector 

And I implement simplified search requests: 

- requestSinglePackage: 'Choose a package'
- requestSingleClass: 'Choose a class'
- requestSingleMethodTag: 'Choose a protocol'
