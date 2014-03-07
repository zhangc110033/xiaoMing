//用对象做的数组去重
function uniqueArray(array) {
	array || (array = [
		123, 8, '8', 2, 8, 'true', true, 1, 0, {}, null, undefined, null, undefined
	]);
	var map = {}, uniqArray = [], contain = false;
	array.forEach(function(ele, index) {
		if (!map.hasOwnProperty(ele)) {
			map[ele] = ele;
			uniqArray.push(ele);
		} else if (map[ele] === ele) {
			return;
		} else if (Array.isArray(map[ele])) {
			map[ele].forEach(function(mapEle, index) {
				if (mapEle === ele) {
					contain = true;
				}
			});
			if (contain === false) {
				map[ele].push(ele);
				uniqArray.push(ele);
			}
			contain = true;
		} else {
			var oriValue = map[ele];
			map[ele] = [];
			map[ele].push(oriValue);
			map[ele].push(ele);
			uniqArray.push(ele);
		}
	});
	console.info(map);
	console.info(uniqArray);
	return uniqArray;
}