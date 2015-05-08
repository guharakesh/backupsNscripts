var data = require ('./krbackup.json');
fs = require('fs');

function convertJSON(old) {
	var newJSON = JSON.parse(JSON.stringify(old));
	JSONrecurse(newJSON);
	return newJSON;
}

function JSONrecurse(obj) {
	var pattern = new RegExp('^[0-9]{13}$');
	for (var i in obj) {
		if (typeof obj[i] === 'object') {
			JSONrecurse(obj[i]);
		} else {
			if (pattern.test(obj[i])) {
				obj[i] = toDate(obj[i]);
			}
		}
	}
}

function toDate(old) {
	var newtime  = new Date(0);
	newtime.setUTCMilliseconds(old);
	newtime.toISOString();
	return newtime;
}

var newJSON = convertJSON(data);
var newJSONstring = JSON.stringify(newJSON);
fs.writeFile('newbackup.json',newJSONstring);
debugger;
