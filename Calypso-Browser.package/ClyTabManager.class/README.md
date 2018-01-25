@TODO.

The logic to build tabs is simple: when selection (browser context) is changed then browser collects new tools which should be opened in that new browser state. Then it removes all old tools and open all new tools. But there is case when new collected tool is already opened. In that case such new instance will be not used. And existing instance will be not removed. So it will stay opened.
And #isSimilarTo: method is used to detect that new collected tool is already opened. It means that browser already shows similar tool.(edited)
There are cases when existing tools are not closed when selection is changed. For example when method editor is dirty and you select another method
In that case dirty method will indicate that it is now do not belongs to the context of browser.
And this method #belongsToCurrentBrowserContext is used for this
In case of method editor it checks that browser still selects editing method

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<Object>
	selectionPriorities:		<Object>
	tabMorph:		<Object>
	tools:		<Object>
	updatingStarted:		<Object>


    Implementation Points