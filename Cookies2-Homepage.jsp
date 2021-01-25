<html>

<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
 // the default ... if there are no cookies
 String favBook = "Python";
 String favPlace="Shimla";
 String favDish="Dal Makhani";
 // get the cookies from the browser request
 Cookie[] theCookies = request.getCookies();
 
 // find our favorite language cookie
 if (theCookies != null) {
  
  for (Cookie tempCookie1 : theCookies) {
   
   if ("myApp.favoriteBook".equals(tempCookie1.getName())) {
    favBook = tempCookie1.getValue();
    break;
   }
   for (Cookie tempCookie2 : theCookies) {
   if ("myApp.favoritePlace".equals(tempCookie2.getName())) {
	    favPlace = tempCookie2.getValue();
	    break;
	   }
   }
   for (Cookie tempCookie : theCookies) {
   if ("myApp.favoriteDish".equals(tempCookie.getName())) {
	    favDish = tempCookie.getValue();
	    break;
	   }
   }
  }
 }
%>

<!-- now show a personalized page ... use the "favLang" variable -->

<!-- show new books for this lang -->
<h4>New Books for <%= favBook %></h4>
<ul>
 <li>blah blah blah</li>
 <li>blah blah blah</li>
</ul>

<h4>Favorite Place to visit <%= favPlace %></h4>
<ul>
 <li>blah blah blah</li>
 <li>blah blah blah</li>
</ul>

<h4>I wanted to eat <%= favDish %></h4>
<ul>
 <li>blah blah blah</li>
 <li>blah blah blah</li>
</ul>

<hr>
<a href="Cookies2-Personalise-form.html">Personalize this page</a>
</body>

</html>