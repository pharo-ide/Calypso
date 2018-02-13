I am abstract query of all methods from given scope.
Subclasses should define concrete condition which all retrieved methods should satisfy: 
- selectsMethod: aMethod 

Scope should support #methodsDo: which I use to collect and filter all available methods.