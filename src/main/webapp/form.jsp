<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Form cat</title>
</head>
<body>
<div class="container">
    <h1>Form cat</h1>
    <form action="form-cat" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="mb-3">
            <label for="breed" class="form-label">Breed</label>
            <input type="text" class="form-control" id="breed" name="breed">
        </div>
        <div class="mb-3">
            <label for="favoriteMeal" class="form-label">Favorite meal</label>
            <input type="text" class="form-control" id="favoriteMeal" name="favoriteMeal">
        </div>
        <div class="mb-3">
            <label for="dateOfBirth" class="form-label">Date of birth</label>
            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
</body>
</html>
