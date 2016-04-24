// occurs when a user clicks the read button
function getAll() {
	var listName = $('#listNameGetAllText').val();
    var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    getListItems(listName, siteUrl, function (data) {
        var items = data.d.results;
        for (var i = 0; i < items.length; i++) {
            alert(items[i].Title + " with Item ID: " + items[i].Id);
        }
    }, function (data) {
        alert("Ooops, an error occured. Please try again");
    });
}
 
// READ operation
// listName: The name of the list you want to get items from
// siteurl: The url of the site that the list is in. 
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function getListItems(listName, siteurl, success, failure) {
    $.ajax({
        url: siteurl + "/_api/web/lists/getbytitle('" + listName + "')/items",
        method: "GET",
        headers: { "Accept": "application/json; odata=verbose" },
        success: function (data) {
            success(data);
        },
        error: function (data) {
            failure(data);
        }
    });
}