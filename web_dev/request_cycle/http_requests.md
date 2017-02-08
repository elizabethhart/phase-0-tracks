What are some common HTTP status codes?

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

What is the difference between a GET request and a POST request? When might each be used?

GET requests are used when you want to get data from a specified resource. 
All data is encoded into the URL.
Stays in browser history, can be bookmarked, limited characters, can be cached.
POST requests are used when you want to send data to a specified resource. 
Form data is in the message of the request.
Not saved in browser history, cannot be bookmarked, unlimited characters, not cached.

GET requests could be used for a search request when are trying to access the html, css, or image files for a webpage, but don't want to edit them.
POST request are used when there is a higher security, like when you are sending the contents of a form to add to a database.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small piece of data from a website that is stored on the user's computer, and they are used by the website to track data about the user for when they are using that website. Sent by the server, and then sent back by the user with their next request, so that the server can determine if multiple requests are coming from the same user.