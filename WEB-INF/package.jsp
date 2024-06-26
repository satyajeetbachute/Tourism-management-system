<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/stylebk.css" />

	
</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<div class="form-header">
							<h1>Add Tour</h1>
						</div>
						<form action="packagedb.jsp" method="post">
							<div class="row">
                                                            <div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Package ID</span>
										<input class="form-control" type="text" placeholder="Enter your Package ID" name="pid">
									</div>
								</div>
						
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Name</span>
										<input class="form-control" type="text" placeholder="Enter Tour name" name="pname">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Price</span>
										<input class="form-control" type="text" placeholder="Enter your price" name="price">
									</div>
								</div>
                                                            	</div>
														<div class="form-group">
								<span class="form-label">Details</span>
								<input class="form-control" type="text" placeholder="Enter Tour Details" name="details">
							</div>
							<div class="row">
								<div class="col-sm-7">
									<div class="row">
										<div class="col-sm-8">
											<div class="form-group">
												<span class="form-label">Gallery</span>
								       <input class="form-control" type="file" placeholder="image" name="img">
                                                                
											</div>
										</div>
										</div>
								</div>
							</div>
							<div class="form-btn">
								<button class="submit-btn" >Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>