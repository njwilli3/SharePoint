// occurs when a user clicks the get button
function getListItem(){
	var itemId = $('#itemIdGetText').val();
	var listName = $('#listNameGetText').val();
	var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
	getListItemWithId(itemId, listName, siteUrl, function(data){
		var items = data.d.results;
        for (var i = 0; i < items.length; i++) {
            alert(items[i].Title + " - with Item ID: " + items[i].Id);
        }	
    }, function (data) {
        alert("Ooops, an error occured. Please try again");
    });
}

// READ SPECIFIC ITEM operation
// itemId: The id of the item to get
// listName: The name of the list you want to get items from
// siteurl: The url of the site that the list is in. 
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function getListItemWithId(itemId, listName, siteUrl, success, failure) {
    var url = siteUrl + "/_api/web/lists/getbytitle('" + listName + "')/items?$filter=ID eq " + itemId;
    $.ajax({
        url: url,
        method: "GET",
        headers: { "Accept": "application/json; odata=verbose" },
        success: function (data) {
            if (data.d.results.length == 1) {
                success(data);
            }
            else {
                failure("Multiple results obtained for the specified Id value");
            }
        },
        error: function (data) {
            failure(data);
        }
    });
}
