I represent highlighted table items.

When data source is changed I responsible to update highlighted rows of table.
For example when user expands tree node highlighted indexes should be shifted when expansion happens before selection. Same should be done when items of data source are removed or added.

I just override how set up table selection by applying highlighted row indexes to table