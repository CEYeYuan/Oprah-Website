XMLHttpRequest
abort()//stop this connection
getAllResponseHeaders()
getResponseHeader(header)
open(method, url)//open a connection
open(method, url, async)
open(method, url, async, user)
open(method, url, async, user, password)
send()
send(data)
setRequestHeader(header, value) 


XMLHttpRequest 
onreadystatechange 
readyState  0 (unitialized)  1 (open)  2 (sent)  3 (receiving)  4 (loaded) 
responseBody //html dom-pre-parsed
responseText //plain text can be parsed xml
responseXML 
status 
200 (OK)  404 (Not Found)  500 (Internal Server Error)  
statusText 