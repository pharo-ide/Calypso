I am abstract critique query which subclasses are supposed to return all critiques abailable from scope.
It is possible to retrieve critiques differently from objects which are visible from scope.
My subclasses define concrete way but all of them return all critiques without any extra condition.
They should implement method: 

- analyzedObjectsDo: aBlock