<?php
$cap = captcha();
?>

<div class="titleBar">
	
	<div class="container">
		
		<h1><?= $contato->titulo ?></h1>

	</div>
	<!-- .container -->

</div>
<!-- .titleBar -->

<div class="conteudo">

	<div class="container">

        <div>
            <ul class="bread">
                <li><a href="./">Inicial</a></li>
                <li>/</li>
                <li>Contato</li>
            </ul>
        </div>        
        <br>
        <br>

		<div class="row">
		
			<div class="col-sm-12 col-md-7">

                <p>Solicite orçamento, envie dúvidas, sugestões ou solicite mais informações sobre nossos serviços e produtos. Nós retornamos para você!</p>

				<form action="./<?= $this->lang->line('rota_contato') ?>/enviar" class="row" id="form_contato">

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_nome') ?>*</label>
						<input type="text" name="nome" class="form-control" required placeholder="<?= $this->lang->line('contato_nome') ?>">
					</div>

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_email') ?>*</label>
						<input type="text" name="email" class="form-control email" required placeholder="<?= $this->lang->line('contato_email') ?>">
					</div>

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_telefone') ?></label>
						<input type="text" name="telefone" id="telefone" class="form-control " placeholder="(99) 9999-9999">
					</div>

                    <div class="form-group col-sm-12 col-md-6">
                        <label>Estou interessado como:</label>
                        <select name="interessado" id="interessado" class="form-control">
                            <option value="">Selecione</option>
                            <option value="Condomínio">Condomínio</option>
                            <option value="Cliente Residencial">Cliente Residencial</option>
                            <option value="Indústria">Indústria</option>
                            <option value="Empresa">Empresa</option>                          
                            <option value="Outros">Outros</option>                          
                        </select>
                    </div>

					<div class="form-group col-sm-12">
						<label><?= $this->lang->line('contato_mensagem') ?>*</label>
						<textarea name="mensagem" class="form-control" required placeholder="<?= $this->lang->line('contato_mensagem') ?>" rows="5"></textarea>
					</div>
						
						<div class="form-group col-sm-12 col-sm-12 col-md-4 col-md-offset-1">
							<?= $cap['image']; ?>
						</div>
						
						<div class="form-group col-sm-2 col-md-offset--10">
							<input placeholder="Captcha" class="form-control" name="captcha" />
						</div>
					

					<div class="form-group col-sm-12 col-sm-12 col-md-4 col-md-offset-15">
                        <button type="submit" class="btn btn-primary btn-lg btn-block"><?= $this->lang->line('contato_enviar') ?></button>
                    </div>


				</form>

				<div class="alert alert-success hide" id="sucesso_formulario"><?= $this->lang->line('contato_sucesso') ?></div>
				<div class="alert alert-error hide" id="erro_formulario"></div>

			</div>

		</div>


	</div>

</div>

<div class="mapa">
    <div class="overlay" onClick="style.pointerEvents='none'"></div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3536.2591566104725!2d-48.605510449318295!3d-27.585493882758428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x952749d3ff234c8f%3A0xeee3718ad8487ed0!2sCimtel+Tecnologia+em+Automa%C3%A7%C3%A3o!5e0!3m2!1spt-BR!2sbr!4v1467051487421" width="100%" height="450" frameborder="0" style="border:0; display: block" allowfullscreen></iframe>
</div>

<?php if(isset($sucesso) && $sucesso == true && isset($js)) { ?>

    <script type="text/javascript"><?=$js;?></script>

<?php } ?>