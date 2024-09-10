function searchName(name)
{
	

	let xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function()
	{
		if(this.readyState==4 && this.status==200)
		{
			document.getElementById("gridshow").innerHTML=this.responseText;
		}
	};
	xhttp.open("GET","searchByName?n="+name,true);
	xhttp.send();
}

function searchUserName(userName)
{
	let xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function()
	{
		if(this.readyState==4 && this.status==200)
		{
			document.getElementById("grid").innerHTML=this.responseText;
		}
	};
	xhttp.open("GET","searchByUserName?nu="+userName,true);
	xhttp.send();
}