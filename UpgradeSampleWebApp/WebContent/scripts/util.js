var  mapTextFile;
var S4Data;

/*Development section - uncomment when using node server command instead of app*/
/*function readFileContent(fileName){
	var responseData;
	var request = $.ajax({
		url: "./api/getFileContent",
		method: "GET",
		data: { fileName : fileName },
	});
	request.done(function( response ) {
		responseData = response;
	});
	request.fail(function( jqXHR, textStatus ) {
		console.log('error');
	});
	return responseData;
}*/


/*Development section - comment when using node server command instead of app*/
var  mapTextFile = getFileContent("data/SAPUATProp.Properties");

function getFileName(key){
	var fileName =null;
	$.each(mapTextFile,function(index,item){
		if(item.KEY == key){
			fileName = item.VALUE;
			return false;
		}
	});
	
	return fileName;
}

function findWhere(dataSource,column,key){
	var val =null;
	$.each(dataSource,function(index,item){
		if(item[column] == key){
			val = item;
			return false;
		}
	});
	
	return val;
}


var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
function getFileContent(fileName){
	console.log(filePath);
	var data = fs.readFileSync(filePath, "utf8", function (error, data) {});
	
	//var lines = readFileContent(fileName)
	var lines = data.split("\n");
	var columnsCount = 0;
	var isFirstLine = true;
	var columns = null;
	var dataSet = [];
	console.log(lines)
	for (var n = 0; n < lines.length; n++) {
		var elem = lines[n];
		if(elem.trim().charAt(0)== '#'){
			continue;
		}
		if(isFirstLine){
			columns = elem.split("\t");
			isFirstLine = false;
		}else{
			var menuItem = elem.split("\t");
			console.log(menuItem)
			if(menuItem.length != 1){
				var obj = {};
				for (var i = 0; i < columns.length; i++) {
					var columnName = columns[i];
					obj[(columnName).trim()] = (menuItem[i].trim());
				}
				dataSet.push(obj);
			}						
	  }	

	}
	console.log(obj);
	return dataSet;
}
