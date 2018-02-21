I am abstract command which subclasses should switch browser to particular trait hierarchy mode.
They should implement two methods: 

- requiredQueryResult
- traitScopeClass

Note that while scope and result in that cases are use same type of trait relation between classes they still provide different concerns and can be merged in single entity:
- required result is responsible to build trait hierarhcy from given set of classes 
- trat scope is responsible to retrieve trait related classes from given scope