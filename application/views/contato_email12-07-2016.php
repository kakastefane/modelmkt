<h3>E-mail enviado pelo site em <?= date("d/m/Y H:i") ?>:</h3>

<hr>

Nome: <?= $nome ?><br>
E-mail: <?= $email ?><br>
Telefone: <?= $telefone ?><br><br>
Mensagem: <?= $mensagem ?><br><br>
	<?php if($anexo != '') { ?>
Curriculo: <a href="<?php echo 'http://www.cimtel.com.br/novo/uploads/curriculos/'.$anexo; ?>">Aqui</a>	
	<?php } ?>

<br><br>
IP: <?= $_SERVER['REMOTE_ADDR'] ?><br><br>

