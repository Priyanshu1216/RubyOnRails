PUT-

The put method is used to update the entire resource,meaning that the entire resource is replaced with the new data.
It means that If you use put to update the resource, you need to pass the entire resource even if you only want to update a small part of resource.
If you do not send the entitre resource, the parts that are not included will be overwritten with null or default values.


PATCH-

The patch method is used to update a part of resource.
this means you only need to send the data that needs to be updated rather than entire resource.


In Summary, PUT method is used to update an entire resource and hence we should pass it the entire resoure while PATCH method is used
to update only a part of resource and hence we should pass it the part of resource that needs to be updated.