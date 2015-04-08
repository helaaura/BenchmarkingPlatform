<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
	            <div layout="column" layout-align="center">
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Login</label>
			          <input ng-model="user.login" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Password</label>
			          <input type="password" ng-model="user.password" required>
			        </md-input-container>
				  </div>
	            </div>
	            
</body>
</html>