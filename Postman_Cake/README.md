
### Task:

Create a Postman collection for step-by-step test for the following flow: 

* Register a new user call  
* Get Cart  
* Add a product to the cart  
* Get Cart again and check if there is a single order line  
* Log out  
* Get Cart and check that there is no Order lines  
* Log in  
* Get Cart and check if there is still a single order-line there you have added before  

This flow will help validate cart persistence across different devices/browsers when a user logs in again.

### Solution:

Exploratory testing was performed as part of Postman's collection development.  
While exploring the site using Devtools, I created a collection with more requests than the assignment required because the collection doesn't work without additional requests.

### Result:

A collection of 12 requests was created, scripts checking the status of the response, and the body of the response for the presence/absence of data were written for the requests