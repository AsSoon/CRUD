<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Recipes</title>
</head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>Recipe ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Flavour</th>
                <th>Difficulty</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>

        <c:forEach items="${recipes}" var="recipe">
                <tr>
                    <td><c:out value="${recipe.recipeId}"/></td>
                    <td><c:out value="${recipe.name}"/></td>
                    <td><c:out value="${recipe.type}"/></td>
                    <td><c:out value="${recipe.flavour}"/></td>
                    <td><c:out value="${recipe.difficulty}"/></td>
                    <td><a href="RecipeController?action=edit&recipeId=<c:out value="${recipe.recipeId}"/>">Update</a>
                    </td>
                    <td><a href="RecipeController?action=delete&recipeId=<c:out value="${recipe.recipeId}"/>">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="RecipeController?action=insert">Add Recipe</a></p>
</body>
</html>