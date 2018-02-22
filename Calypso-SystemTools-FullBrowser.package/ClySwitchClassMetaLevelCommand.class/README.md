I am a base class for the commands which switch the full browser meta level.
Full browser can show instance side or class side of selected classes.

My subclasses define target meta level in following method: 

- metaLevelScope
It should return ClyInstanceSideScope or ClyClassSideScope.

Also I am annotated with toolbar activation strategy. So my subclasses will be shown in the browser toolbar as radio buttons.
And they should implement #toolbarOrder method
