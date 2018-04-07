stop();
usernameTxt.text = getCookie("colorHack","userBox")
creds = getCookie("colorHack","userCash")
credsTxt.text = "Creds: " + creds;
allowed = true;
if (src.substr(0, 3) == "093")
{
		//kicked/booted
	play();
	reason = "Someone else logged into your account";
	status1.text = reason;
	commandRecognized = true;
}
spinnerPacket = new Array();
spinnerPacket = ["100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132"]
spinnerName = new Array();
spinnerName = ["Oldskool","Downward Spiral","Neon","Radioactive","The Skulls","Minimalist","Retro","Butter Cup","The Hex","Yin-Yang","Revolution","Wrong Way","Vinyl","Razor Blades","Hollywood","Rebel","Chance","The Pro","Omega","Biohazard","Triskelion","1337","Glint","The Plague","ROFLMAO","Brainwash","Shuriken","4th Dimension","Affluenza","'Da Bomb","The 8-Bit","Flux","The Officer","Solar","Ouroboros","Stealth"]
for (i = 0; i < 36; i+=1)
{
	trace(spinnerName[i]+" = "+spinnerPacket[i])
	spincombo.addItem(spinnerName[i],spinnerPacket[i]);
}
spincombo.color = 0x000000;
spincombo.selectedColor = 0x000000;
onEnterFrame = function()
{
	checkPrice();
	keepAlive();
   	ij1++;
   	if(ij1 > 8)
   	{
      	ij1 = 0;
   	}
};
function checkPrice()
{
	if (spincombo.getSelectedItem().data == "100")
	{
		price.text = "Price: 120"; 
	} else if (spincombo.getSelectedItem().data == "101")
	{
		price.text = "Price: 130"; 
	} else if (spincombo.getSelectedItem().data == "102")
	{
		price.text = "Price: 370"; 
	} else if (spincombo.getSelectedItem().data == "103")
	{
		price.text = "Price: 990"; 
	} else if (spincombo.getSelectedItem().data == "104")
	{
		price.text = "Price: 350"; 
	} else if (spincombo.getSelectedItem().data == "105")
	{
		price.text = "Price: 420"; 
	} else if (spincombo.getSelectedItem().data == "106")
	{
		price.text = "Price: 500"; 
	} else if (spincombo.getSelectedItem().data == "107")
	{
		price.text = "Price: 540"; 
	} else if (spincombo.getSelectedItem().data == "108")
	{
		price.text = "Price: 660"; 
	} else if (spincombo.getSelectedItem().data == "109")
	{
		price.text = "Price: 710"; 
	} else {
		price.text = "";
	}
}
function keepAlive()
{
	trace("alive");
	sendPacket("0");
}
