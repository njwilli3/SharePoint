// occurs when a user clicks the create button
function CreateNew() {
    var listName = $('#listNameCreateText').val();
    var newItemTitle = $('#itemNameCreateText').val();
   	var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    CreateListItemWithDetails(listName, siteUrl, newItemTitle, function () {
        alert("New Item has been created successfully.");
 	}, function () {
    	alert("Ooops, an error occured. Please try again.");
 	});
}

// CREATE Operation
// listName: The name of the list you want to get items from
// weburl: The url of the web that the list is in. 
// newItemTitle: New Item title.
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function CreateListItemWithDetails(listName, siteUrl, newItemTitle, success, failure) {
    var itemType = GetItemTypeForListName(listName);
    var item = {
        "__metadata": { "type": itemType },
        "Title": newItemTitle
    };
     
    $.ajax({
        url: siteUrl + "/_api/web/lists/getbytitle('" + listName + "')/items",
        type: "POST",
        contentType: "application/json;odata=verbose",
        data: JSON.stringify(item),
        headers: {
            "Accept": "application/json;odata=verbose",
            "X-RequestDigest": $("#__REQUESTDIGEST").val()
        },
        success: function (data) {
            success(data);
        },
        error: function (data) {
            failure(data);
        }
    });
}
 
// Get List Item Type metadata
function GetItemTypeForListName(name) {
    return "SP.Data." + name.charAt(0).toUpperCase() + name.split(" ").join("").slice(1) + "ListItem";
}
