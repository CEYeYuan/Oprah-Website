Arrays --- Indexes are numbers; Not associate array
grow automatically
var a = [];               
a[0] = 'foo'; 
a[1] = 'bar';
a[2] = 'baz'; 


var a = [];
a.push('foo');
a.push('bar');
a.push('baz');

<script>
 // put cursor in username field if empty
 //the form name is login;input name is username
 if (document.forms.login.username.value === '')
 {
 document.forms.login.username.focus();
 }
 // else put cursor in password field
 else
 {
 document.forms.login.password.focus();
 }
</script> 



Objects  
//dictionary
var obj = {};
obj.key = value;
obj['key'] = value;
var obj = { key: value, key1: value1}; 

Event Handlers 
onblur(not focused; when user finishes a field, we can validate that field) 
onchange onclick  onfocus  onkeydown  onkeyup 
onload  onmousedown  onmouseup  onmouseout  onmouseover 
onmouseup  onresize  onselect  onsubmit 

blink
/*
css review
blink{
	visibility:visible;
}
*/

function blinker()
{
 var blinks = document.getElementsByName('blink');
 for (var i = 0; i < blinks.length; i++)
 {
 if (blinks[i].style.visibility == 'visible')
 blinks[i].style.visibility = 'hidden';
 else
 blinks[i].style.visibility = 'visible';
 }
}
window.setInterval(blinker, 500);

function annoy(){
	alert("Hi");	
}
window.setInterval(annoy,2000);

/*
window.setInterval(blinker(), 500);
WRONG !!! will only call it once; because nothing gets returned
*/

var annoy=function(){
	alert("Hi");
}
//assign the address of the function to a variable
window.setInterval(function(){alert("hi");},200);
(function(){/*stuff*/})();//function call it self
//Anomalous function
/*window.setInterval takes 2 parameters, the first is the address of 
an function; the second one is timer
*/