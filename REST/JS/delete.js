// occurs when a user clicks the delete button
function deleteItem() {
	var itemId = $('#itemIdDeleteText').val();
	var listName = $('#listNameDeleteText').val();
    var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    deleteListItem(itemId, listName, siteUrl, function () {
        alert("Item deleted successfully");
    }, function () {
        alert("Ooops, an error occured. Please try again");
    });
}
 
// Delete Operation
// itemId: the id of the item to delete
// listName: The name of the list you want to delete the item from
// siteurl: The url of the site that the list is in. 
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function deleteListItem(itemId, listName, siteUrl, success, failure) {
    $.ajax({
        url: siteUrl + "/_api/web/lists/getbytitle('" + listName + "')/items(" + itemId +")",
        type: "POST",
        headers: {
            "Accept": "application/json;odata=verbose",
            "X-Http-Method": "DELETE",
            "X-RequestDigest": $("#__REQUESTDIGEST").val(),
            "If-Match": "*"
        },
        success: function (data) {
            success(data);
        },
        error: function (data) {
            failure(data);
        }
    });
}

