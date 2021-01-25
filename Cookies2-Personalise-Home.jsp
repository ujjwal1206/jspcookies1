<html>

<head><title>Confirmation</title></head>

<%
 // read form data
 String favBook = request.getParameter("favoriteBook");
 String favPlace = request.getParameter("favoritePlace");
 String favDish = request.getParameter("favoriteDish");
 
 // create the cookie
 Cookie theCookie1 = new Cookie("myApp.favoriteBook", favBook);
 Cookie theCookie2 = new Cookie("myApp.favoritePlace", favPlace);
 Cookie theCookie3 = new Cookie("myApp.favoriteDish", favDish);
 
 // set the life span ... total number of seconds (yuk!)
 theCookie1.setMaxAge(60*60*24*365);    // <-- for one year
 theCookie2.setMaxAge(60*60*24*365);
 theCookie3.setMaxAge(60*60*24*365);
 // send cookie to browser
 response.addCookie(theCookie1);
 response.addCookie(theCookie2);
 response.addCookie(theCookie3);
%>
<body>

 Thanks! We set your favorite Book to: ${param.favoriteBook}
 
 <br/><br/>
 Thanks! We set your favorite Destination to: ${param.favoritePlace}
 <br/><br/>
 Thanks! We set your favorite Dish to: ${param.favoriteDish}
<br/><br/>
 <a href="Cookies2-Homepage.jsp">Return to homepage.</a>
 
</body>

</html>