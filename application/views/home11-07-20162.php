<section class="destaques">
	<ul class="rslides">
	<?php
	$banners = array(
		'tabela' => 'banners', // Pega resultados da tabela banners
		'layout' => 'item_home', // Com o layout em applicaiton/views/templates/banners/_item_home.php
		'links' => array( // Link para rotas
			'url' => 'url_nome',
			'link' => $this->lang->line('rota_banners')
		),
		'limit' => 5, // Lista apenas os 4 ultimos registros
		'miniaturas' => array('banner'),
		'first' => 'active', // Adiciona somente no primeiro elemento
		'ordenar' => array('ordenar','asc') // Ordenar os resultados
	);
	echo $this->gercont->listagem($banners); ?>
	</ul>
</section>
<!-- .destaques -->

<section class="newsletter">
	<div class="container">

		
		<form action="./newsletter/enviar" class="form-inline" id="form_newsletter">
			<div class="form-group col-sm-12 col-md-4">
				<h3>Cadastre-se e receba nossas novidades</h3>
			</div>
			<div class="form-group col-sm-12 col-md-3">
				<label class="sr-only" for="nome">Nome</label>
				<input type="text" class="form-control" id="nome" required placeholder="Nome" name="nome">
			</div>
			<div class="form-group col-sm-12 col-md-3">
				<label class="sr-only" for="email">E-mail</label>
				<input type="email" class="form-control" id="email" required placeholder="E-mail" name="email">
			</div>
			<div class="col-sm-12 col-md-2">
				<button type="submit" class="btn btn-primary btn-block"><?= $this->lang->line('newsletter_enviar') ?></button>
			</div>
			<br>
			<br>
			<br>
				 <div class="col-sm-12 col-md-4 col-md-offset-6 alert alert-success hide" id="sucesso_formulario"><?= $this->lang->line('newsletter_sucesso') ?></div>
	        	 <div class="col-sm-12 col-md-4 col-md-offset-6 alert alert-error hide" style="background-color:#FDF7F7" id="erro_formulario"></div>	
		</form>	
	</div>

	<!-- .container -->
</section>
<!-- .newsletter -->

<section class="produtos">
	<div class="container">

		<h2>O que você precisa?</h2>
		
		<div class="listaProdutos">
			<ul class="row">
			<?php
			$categorias = array(
				'tabela' => 'catalogo_categorias', // Pega resultados da tabela categorias
				'layout' => 'item_home', // Com o layout em applicaiton/views/templates/catalogo_categorias/_item_home.php
				'links' => array( // Link para rotas
					'url' => 'url_nome',
					'link' => 'catalogo/categoria'
				),
                'ordenar' => array('ordenar', asc),				
				'limit' => 4 // Lista apenas os 4 ultimos registros
			);
			echo $this->gercont->listagem($categorias); ?>
			</ul>
		</div>

	</div>
	<!-- .container -->
</section>
<!-- .produtos -->

<section class="depoimentos">
	
	<div class="container">
		
		<h2>Depoimentos</h2>

		<div class="listaDepoimentos">
			
			<div class="row">
				<ul class="col-sm-12 col-md-10 col-md-offset-1 owl-carousel" id="depoimentos">
					<?php
					$depoimentos = array(
						'tabela' => 'depoimentos', // Pega resultados da tabela depoimentos
						'layout' => 'item_home', // Com o layout em applicaiton/views/templates/depoimentos/_item_home.php
						'limit' => 5, // Lista apenas os 4 ultimos registros
						'miniaturas' => array('imagem'),
						'links' => array( // Link para rotas
							'url' => 'url_titulo',
							'link' => ''
						)
					);
					echo $this->gercont->listagem($depoimentos); ?>
				</ul>
			</div>

		</div>

	</div>
	<!-- .container -->

</section>
<!-- .depoimentos -->

<section class="servicos">
	
	<div class="container">
		
		<h2>Serviços</h2>

		<div class="listaServicos">
			
			<ul class="row">
				<?php
				$servicos = array(
					'tabela' => 'conteudo', // Pega resultados da tabela servicos
					'layout' => 'item_home', // Com o layout em applicaiton/views/templates/servicos/_item_home.php
					'limit' => 4, // Lista apenas os 4 ultimos registros
					'miniaturas' => array('imagem'),
					'where' => array('tipo' => 1),
					'links' => array( // Link para rotas
						'url' => 'url_titulo'
					)
				);
				echo $this->gercont->listagem($servicos); ?>
			</ul>

		</div>

	</div>
	<!-- .container -->

</section>
<!-- .servicos -->

<section class="noticias">
	
	<div class="container">
		
		<h2>Blog</h2>

		<div class="listaNoticias">
			
			<ul class="row">
				<?php
				$noticias = array(
					'tabela' => 'noticias', // Pega resultados da tabela noticias
					'layout' => 'item_home', // Com o layout em applicaiton/views/templates/noticias/_item_home.php
					'limit' => 3, // Lista apenas os 4 ultimos registros
					'miniaturas' => array('corte'),
					'links' => array( // Link para rotas
						'url' => 'url_titulo',
						'link' => $this->lang->line('rota_noticias')
					)
				);
				echo $this->gercont->listagem($noticias); ?>
			</ul>

		</div>

	</div>
	<!-- .container -->

</section>
<!-- .noticias -->

<section class="clientes">
	
	<div class="container">
		
		<h2>Clientes</h2>

		<div class="listaClientes">
			
			<ul id="clientes">
				<?php 
				$clientes = array(
					'tabela' => 'clientes', // Pega resultados da tabela clientes
					'layout' => 'item_home', // Com o layout em applicaiton/views/templates/clientes/_item_home.php
					'limit' => 12, // Lista apenas os 4 ultimos registros
					'miniaturas' => array('imagem'),
					'links' => array( // Link para rotas
						'url' => 'url_titulo',
						'link' => ''
					)
				);
				echo $this->gercont->listagem($clientes);  ?>
			</ul>

		</div>

	</div>
	<!-- .container -->

</section>
<!-- .clientes -->