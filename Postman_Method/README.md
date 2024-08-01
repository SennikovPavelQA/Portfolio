### Task: 

Create a collection in Postman with requests to fully test the method:  

```
The POST method allows you to create a new project in the system  
Address: /api/projects  
Authorisation: required 
```  

The URL in the method must be specified as a global variable (you do not have access to the resource).
Authorisation tokens in the method must be specified as global variables (you do not have access to the authorisation data).
Requests should be designed in such a way that the reviewer can run them by specifying only the URL and Token in global variables.

### Solution:

To complete the task, the following Postman features were utilized:

*   Creating global variables for authorisation and URLs  
*   Creating scripts to check code status and response body  

### Result:

The collection includes 12 different requests that will test the method for positive and negative cases