// occurs when a user clicks the move file button
function moveFile() {
	var fileName = $('#fileNameMoveText').val();
	var libraryName = $('#libraryNameMoveText').val();
	var libraryNameTo = $('#libraryNameToMoveText').val();
    var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    moveLibrayFile(fileName, libraryName, libraryNameTo, siteUrl, function () {
        alert("File moved successfully");
    }, function () {
        alert("Ooops, an error occured. Please try again");
    });
}

// Move File Operation - copies metadata AND version history
// libraryName: The name of the library you want to move the file from
// libraryToName: The name of the library you want to move the file to
// siteurl: The url of the site that the library is in. 
// fileName: The name of the file being moved
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function moveLibrayFile(fileName, libraryName, libraryNameTo, siteUrl, success, failure) {
	var sourceFileUrl = "/" + libraryName + "/" + fileName;
	var targetFileUrl = "/" + libraryNameTo + "/" + fileName;
    $.ajax({
        url: siteUrl + "/_api/web/getfilebyserverrelativeurl('" + sourceFileUrl + "')/moveto(newurl='" + targetFileUrl + "',flags=1)",
        type: "POST",
        contentType: "application/json;odata=verbose",
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

