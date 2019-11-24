/* ajax.js
 * uses javascript to seamlessly 
 * request another page from an 
 * existing page without refresh.
 * takes a url to get and an element id
 * the get must be under the same domain 
 * as the page for security reasons.
 * If ajax doesn't work, the 'get' is 
 * put in the page as a simple "click here" 
 * link, unless innerHTML doesn't work, in 
 * which case the requesting page won't change.
 * This function is one-liner safe.
*/
function ajax(get,divid)
{
	/* this code is one-line safe */
	var xmlHttp;
	try
	{
		/* Firefox, Opera 8.0+, Safari */
		xmlHttp=new XMLHttpRequest();
	}
	catch(e)
	{
		/* Internet Explorer */
		try
		{
			/* Internet Explorer 6.0+ */
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch(e)
		{
			try
			{
				/* Internet Explorer 5.5+ */
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e)
			{
				/* document.getElementById(divid).innerHTML='<a href="'+get+'">Click Here</a>'; */
				return false;
			}
		}
	}
	
	xmlHttp.onreadystatechange=function()
	{
		if(xmlHttp.readyState==4)
		{
			document.getElementById(divid).innerHTML=xmlHttp.responseText;
		}
	};
	xmlHttp.open('GET',get,true);
	xmlHttp.send(null);
}