<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>Add Student</title>
</head>
<body>
	
		<h1 align="center">Provide Student Information</h1>
	
	<hr />
	<form action="saveProcess" method="post">

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputName">Full Name</label> <input type="text"
					class="form-control" name="name" placeholder="Full Name">
			</div>

			<div class="form-group col-md-6">
				<label for="inputEmail4">Email</label> <input type="email"
					class="form-control" name="email" placeholder="Email">
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<div class="form-check form-check-inline">
					<label class="form-check-label" for="inlineRadio1">Gender:</label>
					<input class="form-check-input" type="radio" name="gender" value="Male"
						checked><label class="form-check-label" for="inlineRadio1">Male</label>
					<input class="form-check-input" type="radio" name="gender" value="Female">
					<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label class="form-check-label" for="gridCheck"> Hobbies: </label>
				<div class="form-check form-check-inline">

					<input class="form-check-input" type="checkbox" name="hobbies"
						value="Cricket"> <label class="form-check-label" for="gridCheck">
						Cricket </label>
						
						
						 <input class="form-check-input" type="checkbox"
						name="hobbies" value="Football"> <label class="form-check-label"
						for="gridCheck"> Football </label>
						
						 <input class="form-check-input"
						type="checkbox" name="hobbies" value="volleyball"> <label
						class="form-check-label" for="gridCheck"> volleyball </label>
						
						 <input
						class="form-check-input" type="checkbox" name="hobbies" value="Hockey" > <label
						class="form-check-label" for="gridCheck"> Hockey </label>
				</div>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputCity">City</label> <select name="city"
					class="form-control">
					<option selected>Choose...</option>
					<option value="Delhi">Delhi</option>
					<option value="Ghaziabad">Ghaziabad</option>
					<option value="Noida">Noida</option>
					<option value="Greater Noida">Greater Noida</option>
					<option value="Gurgram">Gurgram</option>
				</select>
			</div>

			<div class="form-group col-md-6">
				<label for="exampleFormControlTextarea1">Address</label>
				<textarea class="form-control" name="address" rows="3"></textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-primary" id="btn">Submit</button>
	</form>


	<hr />
	<h1 align="center">List Students</h1>

	<hr />
	<table class="table">
		<thead class="thead-dark">
			<tr>

				<th scope="col">Full Name</th>
				<th scope="col">E-mail</th>
				<th scope="col">Gender</th>
				<th scope="col">Hobbies</th>
				<th scope="col">City</th>
				<th scope="col">Address</th>
				 <th scope="col">Update</th>
				<th scope="col">Remove</th>
 
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${studentsList}" var="s">
				<c:url var="updateLink" value="displayUpdateForm">
					<c:param name="studentId" value="${s.id}" />
				</c:url>

				<c:url var="deleteLink" value="displayDeleteForm">
					<c:param name="studentId" value="${s.id}" />
				</c:url>
				<tr>
					<td>${s.name}</td>
					<td>${s.email}</td>
					<td>${s.gender}</td>
					<td>${s.hobbies}</td>
					<td>${s.city}</td>
					<td>${s.address}</td>
					  <td><a href="${updateLink}">Update</a></td>
					
					<td> <a href="${deleteLink}"
						onclick="if(!(confirm('Are you sure want to delete this Student permanently?'))) return false">Remove</a></td>
				</tr>
			</c:forEach>
		<tbody>
		
	</table>
<hr />
	
		<h1 align="center">Update Student Information</h1>

	<hr />
	<form action="updateForm?id=${student.id }" method="post">

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputName">Full Name</label> <input type="text"
					class="form-control" name="name" placeholder="Full Name" value="${student.name}">
			</div>

			<div class="form-group col-md-6">
				<label for="inputEmail4">Email</label> <input type="email"
					class="form-control" name="email" placeholder="Email" value="${student.email}">
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<div class="form-check form-check-inline">
					<label class="form-check-label" for="inlineRadio1">Gender:</label>
					
					<input class="form-check-input" type="radio" name="gender" value="Male" '${student.gender}"
						><label class="form-check-label" for="inlineRadio1">Male</label>
					<input class="form-check-input" type="radio" name="gender" value="Female" >
					<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label class="form-check-label" for="gridCheck"> Hobbies: </label>
				<div class="form-check form-check-inline">

					<input class="form-check-input" type="checkbox" name="hobbies"
						value="Cricket"> <label class="form-check-label" for="gridCheck">
						Cricket </label>
						
						
						 <input class="form-check-input" type="checkbox"
						name="hobbies" value="Football"> <label class="form-check-label"
						for="gridCheck"> Football </label>
						
						 <input class="form-check-input"
						type="checkbox" name="hobbies" value="volleyball"> <label
						class="form-check-label" for="gridCheck"> volleyball </label>
						
						 <input
						class="form-check-input" type="checkbox" name="hobbies" value="Hockey" > <label
						class="form-check-label" for="gridCheck"> Hockey </label>
				</div>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputCity">City</label> <select name="city"
					class="form-control">
					<option selected>Choose...</option>
					<option value="Delhi">Delhi</option>
					<option value="Ghaziabad">Ghaziabad</option>
					<option value="Noida">Noida</option>
					<option value="Greater Noida">Greater Noida</option>
					<option value="Gurgram">Gurgram</option>
				</select>
			</div>

			<div class="form-group col-md-6">
				<label for="exampleFormControlTextarea1">Address</label>
				<textarea class="form-control" name="address" rows="3">"${student.address}"</textarea>
			</div>
		</div>
		<button type="submit" class="btn btn-primary" id="btn">Submit</button>
	</form>

</body>
</html>