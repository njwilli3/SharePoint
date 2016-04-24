// occurs when a user clicks the copy file button
function copyFile() {
	var fileName = $('#fileNameCopyText').val();
	var libraryName = $('#libraryNameCopyText').val();
    var siteUrl = _spPageContextInfo.siteAbsoluteUrl;
    copyLibrayFile(fileName , libraryName, siteUrl, function () {
        alert("File copied successfully");
    }, function () {
        alert("Ooops, an error occured. Please try again");
    });
}

// Copy File Operation - copies metadata but NOT version history
// libraryName: The name of the library you want to copy the file from
// siteurl: The url of the site that the library is in. 
// fileName: The name of the file being copied
// success: The function to execute if the call is sucesfull
// failure: The function to execute if the call fails
function copyLibrayFile(fileName, libraryName, siteUrl, success, failure) {
	var sourceFileUrl = "/" + libraryName + "/" + fileName;
	var targetFileUrl = "/" + libraryName + "/CopiedFile.txt";
    $.ajax({
        url: siteUrl + "/_api/web/getfilebyserverrelativeurl('" + sourceFileUrl + "')/copyto(strnewurl='" + targetFileUrl + "',boverwrite=false)",
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