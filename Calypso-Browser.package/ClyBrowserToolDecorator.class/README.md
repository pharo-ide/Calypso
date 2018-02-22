I a base class for various kinds of browser tab decorators.
Decorators are added to browser tools by browser plugins using following method: 

	aBrowserTool addDecorator: aBrowserToolDecorator
	
Subclasses should implement single method: 

- decorateTool

When decorator is added to the tool it sets my browserTool variable.
And #decorateTool method performs required logic with this given tool.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	browserTool:		<ClyBrowserTool>