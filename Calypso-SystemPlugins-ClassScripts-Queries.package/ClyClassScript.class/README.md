I am abstract class which represent kind of script which can be extracted and executed from from class methods.
My subclasses define what methods are represent them. They should implement class side method #isImplementedByMethod:.
For example methods with pragma <sampleInstance> are represented by ClySampeInstanceScript

	ClySampeInstanceScript class>>isImplementedByMethod: aMethod
		^aMethod hasPragmaNamed: #sampleInstance

To create my instances use following method: 

	ClyClassScript createFrom: aMethod
 
To run the script send execute message: 

	aScript executeBy: aClass 
	
The argument can be different then the class which defines the method. Because the script can be run by subclasses.

I provide description methods for the UI. Some subclasses override them: 

- description 
- iconName 

Internal Representation and Key Implementation Points.

    Instance Variables
	implementorMethod:		<CompiledMethod>