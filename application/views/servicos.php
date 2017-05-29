<div class="titleBar">
	
	<div class="container">
		
		<h1>Serviços</h1>

	</div>
	<!-- .container -->

</div>
<section class="servicos">
	
	<div class="container">

         <div>
            <ul class="bread">
                <li><a href="./">Inicial</a></li>
                <li>/</li>
                <li>Serviços</li>
            </ul>
        </div>        
        <br>
        <br>	


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