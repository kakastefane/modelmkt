<?php
$cap = captcha();
?>
<div class="titleBar">
	
	<div class="container">
		
		<h1>Trabalhe Conosco</h1>

	</div>
	<!-- .container -->

</div>
<!-- .titleBar -->

<div class="conteudo">

	<div class="container">

		<div class="row">
		
			<div class="col-sm-12 col-md-8 col-md-offset-2">

				<form action="./contato/enviar" class="row" id="form_contato" enctype="multipart/form-data">

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_nome') ?>*</label>
						<input type="text" name="nome" class="form-control" required placeholder="<?= $this->lang->line('contato_nome') ?>">
						<input type="hidden" name="trabalheConosco" value="1">
					</div>

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_email') ?>*</label>
						<input type="text" name="email" class="form-control email" required placeholder="<?= $this->lang->line('contato_email') ?>">
					</div>

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_telefone') ?></label>
						<input type="text" id="telefone" name="telefone" class="form-control " placeholder="(99) 9999-9999">
					</div>

					<div class="rowCampo">
							<p class="col s12 m4 l4">
								<label for="">Curriculo</label>
							</p>
							<p class="col s12 m8 l8">
								<input  type="file" required name="curriculo">
							</p>
					</div>

					<div class="form-group col-sm-12">
						<label><?= $this->lang->line('contato_mensagem') ?>*</label>
						<textarea name="mensagem" class="form-control" required placeholder="<?= $this->lang->line('contato_mensagem') ?>" rows="5"></textarea>
					</div>

						<div class="form-group col-sm-12 col-md-4 col-md-offset-1">
							<?= $cap['image']; ?>
						</div>

						<div class="form-group col-sm-12 col-md-3">
							<input placeholder="Captcha" class="form-control" name="captcha" />
						</div>					

					<div class="form-group col-sm-12 col-md-4 col-md-offset-4">
                        <button type="submit" class="btn btn-primary btn-lg btn-block"><?= $this->lang->line('contato_enviar') ?></button>
                    </div>


				</form>

				<div class="alert alert-success hide" id="sucesso_formulario"><?= $this->lang->line('contato_sucesso') ?></div>
				<div class="alert alert-error hide" id="erro_formulario"></div>

			</div>

		</div>


	</div>

</div>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3536.2591566104725!2d-48.605510449318295!3d-27.585493882758428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x952749d3ff234c8f%3A0xeee3718ad8487ed0!2sCimtel+Tecnologia+em+Automa%C3%A7%C3%A3o!5e0!3m2!1spt-BR!2sbr!4v1467051487421" width="100%" height="450" frameborder="0" style="border:0; display: block" allowfullscreen></iframe>