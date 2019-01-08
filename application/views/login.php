<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->helper('url'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<script src="<?=base_url()?>js/jquery-2.1.4.js" type="text/javascript"></script>
	<link href="<?=base_url()?>css/bootstrap.css" rel="stylesheet"/>
	<link href="<?=base_url()?>css/bootstrap-theme.css" rel="stylesheet"/>
	<link href="<?=base_url()?>css/normalize.css" rel="stylesheet">
	<link href="<?=base_url()?>css/estilos.css" rel="stylesheet">
	<link href="<?=base_url()?>css/paraiconos.css" rel="stylesheet" />
	<link href="<?=base_url()?>fonts/OleoScript-Regular.ttf" rel="stylesheet" />
	<link rel="stylesheet" href="<?=base_url()?>css/paraicono.css">
	<link rel="stylesheet" href="<?=base_url()?>css/sweetalert.css"/>
	<script src="<?=base_url()?>js/sweetalert-dev.js"></script>
	<title>Welcome to CodeIgniter</title>

	<style>
@font-face{
font-family:Fuente;
src:url(<?=base_url()?>fonts/OleoScript-Regular.ttf);
}
    body{
        background-image: url(<?=base_url()?>imagenes/puente.jpg);
        background-size:cover;
        background-repeat: no-repeat;
        background-attachment:fixed;
    }
    .formulario{
        transition: 2s;
        margin-top: 100px;
        width: 30%;
        box-shadow: 0px 0px 40px blue,0px 0px 80px white; 
        
    }

    .formulario:hover{
        transition: .8s;
        background-color: rgba(0,0,0,.5);
    }


.logo{
        height: 75px;
        margin-top: 40px;
    }
    
 .espaciado{
        margin-top: 40px;
    }

    fieldset{
        transition: 2s;
        margin-bottom: 50px;
        border-color: rgba(213,0,0 ,1);
        border-style: groove;
        border-width: 5px;
        border-radius: 20px;
    }
    


   h3,h4{
        
        color:white;
        text-align: center;
        font-family: fuente;
    }
  
    .Input{
        transition: .8s;
        background-color: rgba(0,0,0,.5);
        color: white;
        border-color:#006;
	border-bottom-color:white;
        border-bottom-style:groove;
	border-left:none;
	border-right:none;
	border-top:none;
        border-width: 4px;
       
    }

    .Input:hover{
        transition: .8s;
	background-color:rgba(55,71,79 ,.5);
	box-shadow:inset;
        border-bottom-color:red;
	}
    
    .Input:focus{
        transition: .8s;
	border-bottom-color:red;
    }



    @media screen and (max-width:750px) {
        
        .logo{
            height: 50px;

        }
        .formulario{
            transition: 2s;
            width: 95%;
            margin-top: 10px;
        }
    }
</style>
</head>
<body>

<div class="container formulario">
         <div class="row">
               <div class="col-xs-4 col-xs-offset-4  ">
                <img src="<?=base_url()?>imagenes/londres2.jpg" class="logo center-block">
                </div>
            
        </div>
         <div class=" espaciado">
                
                </div>
        <div class="row">
            <fieldset class="col-xs-10 col-xs-offset-1">
            

                <legend class="hidden-xs">
                    <h3>inicio de sesi&oacute;n</h3>
                </legend>
                
                <form role="form" class="form-horizontal" action="" method="POST">
                    
                    <div class="form-group">
                    <label class="col-xs-12" for="usuario"><h4>Usuario</h4></label>
                 <div class="col-xs-10 col-xs-offset-1">
                    <input name="usuario" type="text" id="usuario" class="form-control Input">
                        
                        </div>
                    
                    </div>
                    <div class="form-group">
                    <label class="col-xs-12" for="password"><h4>Password</h4></label>
                 <div class="col-xs-10 col-xs-offset-1">
                    <input name="password" type="password" id="password" class="form-control col-xs-12 Input">
                        </div>
                    
                    </div>
                    
                    <div class="form-group">
                        <button type="submit" class="btn btn-danger center-block">Aceptar</button>
                    
                    </div>
                 
                </form>
            </fieldset>
        
        </div>
</div>

</body>
</html>