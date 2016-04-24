// occurs when a user clicks the update button
function updateItem() {
	var itemId = $('#itemIdUpdateText').val();
	var listName = $('#listNameUpdateText').val();
    var updateItemTitle = $('#itemNameUpdateText').val();
    var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    updateListItem(itemId, listName, siteUrl, updateItemTitle, function() {
        alert("Item updated, refreshing avilable items");
    }, function () {
        alert("Ooops, an error occured. Please try again");
    });
}
 
// Update Operation
// listName: The name of the list you want to get items from
// siteurl: The url of the site that the list is in. 
// title: The value of the title field for the new item
// itemId: the id of the item to update
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function updateListItem(itemId, listName, siteUrl, title, success, failure) {
    var itemType = GetItemTypeForListName(listName);
    var item = {
        "__metadata": { "type": itemType },
        "Title": title
    };
 	
    $.ajax({
        url: siteUrl + "/_api/web/lists/getbytitle('" + listName + "')/items(" + itemId +")",
        type: "POST",
        contentType: "application/json;odata=verbose",
        data: JSON.stringify(item),
        headers: {
            "Accept": "application/json;odata=verbose",
            "X-RequestDigest": $("#__REQUESTDIGEST").val(),
            "X-HTTP-Method": "MERGE",
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