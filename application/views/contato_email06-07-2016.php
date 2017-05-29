<h3>E-mail enviado pelo site em <?= date("d/m/Y H:i") ?>:</h3>

<hr>

Nome: <?= $nome ?><br>
E-mail: <?= $email ?><br>
Telefone: <?= $telefone ?><br><br>
Mensagem: <?= $mensagem ?><br><br>
	<?php if($contato->anexo != '') { ?>

Curriculo: <a href='<?php echo "./uploads/curriculos/".$contato->anexo; ?>'>Aqui</a>
	
	<?php } ?>


IP: <?= $_SERVER['REMOTE_ADDR'] ?><br><br>

