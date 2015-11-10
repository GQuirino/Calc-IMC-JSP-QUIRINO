<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Calcular IMC</title>

<!-- Bootstrap -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="col-md-12">
			<div class="modal-dialog" style="margin-bottom: 0">
				<div class="modal-content">
					<div class="panel-heading">
						<h3 class="panel-title">Carcular IMC</h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Altura" name="altura"
										type="text" autofocus="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Peso"
										name="peso" type="text" value="">
								</div>
								
								<!-- Change this to a button or input when using this as a form -->
								<center><input type="submit" class="btn btn-sm btn-success" value="Calcular IMC"></center>
							</fieldset>
						</form>
					</div>
					<center>
					<div class="panel-body" >
					<%
  
  
  String Paramaltura = request.getParameter("altura");
  Paramaltura = Paramaltura == null ? "" : Paramaltura;
  
  String Parampeso = request.getParameter("peso");  
  Parampeso = Parampeso == null ? "" : Parampeso;
 
  float altura=0, peso=0, imc=0;
  
	if(!Paramaltura.isEmpty())
	altura = Float.parseFloat(Paramaltura);

	
	if(!Parampeso.isEmpty())	
	peso = Float.parseFloat(Parampeso);
	
	%><h3>
	INDICE IMC: 
	<% 
	
	imc = peso /(altura*altura);
	
	out.print(imc);
	if(imc<17)
	out.print("<br>Peso muito abaixo do normal");
	if((imc>17)&&(imc<18.49))
		out.print("<br>Abaixo do peso");
	if((imc>18.5)&&(imc<24.99))
		out.print("<br>Peso Normal");
	if((imc>25)&&(imc<29.99))
		out.print("<br>Peso acima do normal");
	if(imc>30)
		out.print("<br>Peso muito acima do normal");
	%>
	
	</h3></center>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	  

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>