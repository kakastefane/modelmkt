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

        <div>
            <ul class="bread">
                <li><a href="./">Inicial</a></li>
                <li>/</li>
                <li>Trabalhe Conosco</li>
            </ul>
        </div>        
        <br>
        <br>

		<div class="row">
		
			<div class="col-sm-12 col-md-8 col-md-offset-2">

                <p>Venha trabalhar conosco, preencha o formulário abaixo e cadastre seu curriculo.</p>

				<form action="./contato/enviar" class="row" id="form_contato" enctype="multipart/form-data">

					<div class="form-group col-sm-12 col-md-6">
						<label><?= $this->lang->line('contato_nome') ?>*</label>
						<input type="text" name="nome" class="form-control" required placeholder="<?= $this->lang->line('contato_nome') ?>">
						<input type="hidden" name="trabalheConosco" value="1" autocomplete="off">
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

<?php if(isset($sucesso) && $sucesso == true && isset($js)) { ?>

    <script type="text/javascript"><?=$js;?></script>

<?php } ?>