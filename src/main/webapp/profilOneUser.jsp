<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.tgc.modele.Notice" %>
<%@ page import="com.tgc.modele.User" %>
<%@ page import="com.tgc.dao.NoticeDAO" %>
<%@ page import="com.tgc.dao.UserDAO" %>
<%@ page import="com.tgc.dao.TgcConnection" %>
<!DOCTYPE html>
	<html>
		<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.14.0/css/mdb.min.css" rel="stylesheet">
		<title>Profil user</title>
		</head>
		<body>
	<!-- 	<div class="container my-5">
  <section> -->
    
    <!-- <style>
      .md-pills .nav-link.active {
        color: #fff;
        background-color: #616161;
      }
      button.close {
        position: absolute;
        right: 0;
        z-index: 2;
        padding-right: 1rem;
        padding-top: .6rem;
      }
    </style> -->
    <table>
    <% for(User user: UserDAO.getAllUsers()) { %>
				
					<tr>
						<td> <%= user.getId() %></td>
						<td> <%= user.getLogin() %></td>
						<td> <%= user.getEmail() %></td>
						<td> <%= user.getPassword() %></td>
						<td> <%= user.getLocalisation() %></td>
						<td><a href="/TheGoodCorner/Deleted?id=<%= user.getId() %>">Deleted</a> </td>
						<td><a href="/TheGoodCorner/Updated?id=<%= user.getId() %>">Updated</a> </td>
					</tr>
				<%
				}
				%>
				</table>
    
		<!-- <div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body p-0">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<div class="row">
							<div class="col-md-6 py-5 pl-5">
								<h5 class="font-weight-normal mb-3">Paper cup mockup</h5>
								<p class="text-muted">text</p>
								<ul class="list-unstyled font-small mt-5">
									<li>
										<p class="text-uppercase mb-2"><strong>Client</strong></p>
										<p class="text-muted mb-4">Envato Inc.</p>
									</li>
									<li>
										<p class="text-uppercase mb-2"><strong>Date</strong></p>
										<p class="text-muted mb-4">June 27, 2019</p>
									</li>
									<li>
										<p class="text-uppercase mb-2"><strong>Skills</strong></p>
										<p class="text-muted mb-4">Design, HTML, CSS, Javascript</p>
									</li>
									<li>
										<p class="text-uppercase mb-2"><strong>Address</strong></p>
										<a href="https://mdbootstrap.com/docs/jquery/design-blocks/">MDBootstrap</a>
									</li>
								</ul>								
							</div>							
							<div class="col-md-6">								
								<div class="view rounded-right">
									<img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Vertical/5.jpg" alt="Sample image">
								</div>								
							</div>											
						</div>
					</div>
				</div>
			</div>
		</div>

    <h6 class="font-weight-bold text-center grey-text text-uppercase small mb-4">portfolio</h6>
    <h3 class="font-weight-bold text-center dark-grey-text pb-2">Product Designs</h3>
    <hr class="w-header my-4">
    <p class="lead text-center text-muted pt-2 mb-5">You can find several product design by our professional team in
      this section.</p>
		
    First row
    <div class="row">

      First column
      <div class="col-12">

        Nav tabs
        <ul class="nav md-pills flex-center flex-wrap mx-0" role="tablist">
          <li class="nav-item">
            <a class="nav-link active font-weight-bold text-uppercase" data-toggle="tab" href="#panel31" role="tab">ALL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold text-uppercase" data-toggle="tab" href="#panel32" role="tab">Design</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold text-uppercase" data-toggle="tab" href="#panel33" role="tab">Mockup</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="tab-content mb-5">
      <div class="tab-pane fade show in active" id="panel31" role="tabpanel">
        <div class="row">
          <div class="col-md-12 col-lg-4">
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img3.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="my-3">Phone Bag</h5>
                <p class="card-text text-uppercase mb-3">Bag, Box</p>
              </div>
            </a>
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img9.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="my-3">Paper Bag</h5>
                <p class="card-text text-uppercase mb-3">Bag</p>
              </div>
            </a>
          </div> 
        </div>
      </div>
      <div class="tab-pane fade" id="panel32" role="tabpanel">

        Grid row
        <div class="row">

          Grid column
          <div class="col-md-12 col-lg-4">

            Card
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img9.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">Paper Bag</h5>
                <p class="card-text text-uppercase mb-3">Bag</p>

              </div>

            </a>
            Card

          </div>
          Grid column

          Grid column
          <div class="col-md-6 col-lg-4">

            Card
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src=" https://mdbootstrap.com/img/Photos/Others/img4.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">Book</h5>
                <p class="card-text text-uppercase mb-3">Book</p>

              </div>

            </a>
            Card

          </div>
          Grid column

          Grid column
          <div class="col-md-6 col-lg-4">

            Card
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img8.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">Magazine</h5>
                <p class="card-text text-uppercase mb-3">Book</p>

              </div>

            </a>
            Card

          </div>
          Grid column

        </div>
        Grid row

      </div>
      Panel 2

      Panel 3
      <div class="tab-pane fade" id="panel33" role="tabpanel">

        Grid row
        <div class="row">

          Grid column
          <div class="col-md-12 col-lg-4">

            Card
            <div class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img3.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">Phone Bag</h5>
                <p class="card-text text-uppercase mb-3">Bag, Box</p>

              </div>

            </div>
            Card

          </div>
          Grid column

          Grid column
          <div class="col-md-6 col-lg-4">

            Card
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/img5.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">Notes</h5>
                <p class="card-text text-uppercase mb-3">Note</p>

              </div>

            </a>
            Card

          </div>
          Grid column

          Grid column
          <div class="col-md-6 col-lg-4">

            Card
            <a class="card hoverable mb-4" data-toggle="modal" data-target="#basicExampleModal">

              Card image
              <img class="card-img-top" src=" https://mdbootstrap.com/img/Photos/Others/img10.jpg" alt="Card image cap">

              Card content
              <div class="card-body">

                <h5 class="my-3">T-shirt</h5>
                <p class="card-text text-uppercase mb-3">Box</p>

              </div>

            </a>
            Card

          </div>
          Grid column

        </div>
        Grid row

      </div>
      Panel 3

    </div>
    Tab panels

  </section>
  Section

</div> -->
		
		</body>
	</html>