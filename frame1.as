stop();
setCookie = function (c, n, v)
{
	var so = SharedObject.getLocal(c);
	so.data[n] = v;
	so.flush();
};
getCookie = function (c, n)
{
	var so = SharedObject.getLocal(c);
	return so.data[n];
};
function containsAnnoyance(msg:String):Boolean
{
	for (var i:Number = 0; i < msg.length; ++i)
	{
		if (msg.substr(i, 9) == "undefined" || msg.substr(i, 3) == "NaN")
		{
			return true;
			break;
		}
	}
}
pad = function (dataStr, lengthNum)
{
	for (i = dataStr.length; i < lengthNum; i++)
	{
		dataStr = "0" + dataStr;
	}
	return (dataStr);
};
sendPacket = function(data1){
	socket1[n].send(data1)
}
userBox.text = getCookie("colorHack","userBox")
passBox.text = getCookie("colorHack","passBox")
userBox.maxChars = 20;
passBox.maxChars = 20;
n = 1;
socket1 = new Array();
socket1[n] = new XMLSocket();
socket1[n].onData = function(src)
{
	commandRecognized = false;
	done1 = false;
	if (src.substr(0, 3) == "091")
	{
		//kicked/booted
		reason = "You are currently banned.";
		status1.text = reason;
		commandRecognized = true;
	}
	var firstChar = new String(src.substr(0, 1));
	if (src == "08")
	{
		//server not full
		sendPacket("09" + username1 + ";" + password1);
		commandRecognized = true;
	}
	if (firstChar == "A")
	{
		cash = src.split(";")[8];
		_root.setCookie("colorHack","userCash",cash)
		play();
		commandRecognized = true;
	}
}
