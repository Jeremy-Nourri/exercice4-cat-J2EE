<%@ page import="org.example.exercice4_j2ee.model.Cat" %>
<jsp:useBean id="catList" class="java.util.ArrayList" type="java.util.ArrayList<org.example.exercice4_j2ee.model.Cat>" scope="request"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Cat List</title>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Breed</th>
        <th scope="col">Favorite meal</th>
        <th scope="col">Date of birth</th>
    </tr>

    </thead>
    <tbody>
    <% for (Cat cat : catList) { %>
    <tr>
        <td><%= cat.getName() %></td>
        <td><%= cat.getBreed() %></td>
        <td><%= cat.getFavoriteMeal() %></td>
        <td><%= cat.getDateOfBirth() %></td>
    </tr>
    <% } %>

    </tbody>
</table>
</body>
</html>