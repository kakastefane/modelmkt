<h1>Contato de <?= $contato->nome ?></h1>

<hr>

<h2>Dados do contato:</h2>
<ul>
	<li><b>Nome:</b> <?= $contato->nome ?></li>
	<li><b>Email:</b> <?= $contato->email ?></li>
	<li><b>Telefone:</b> <?= $contato->telefone ?></li>
	<li><b>Data:</b> <?= data_log($contato->data_hora) ?></li>
	<li><b>Mensagem:</b> <?= $contato->mensagem ?></li>
	<?php if($contato->anexo != '') { ?>
	<li><b>Curriculo:</b> <a href='<?php echo "./uploads/curriculos/".$contato->anexo; ?>'>Aqui</a></li>
	<?php } ?>
</ul>

<hr>

<a href="./gercont/contatos" class="btn">Voltar</a>