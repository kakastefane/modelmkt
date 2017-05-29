<div class="main">
	<div class="rowTitle">
		<div class="container busca">
		<div class="row">
			<div class="col s12">
				<p>Você pesquisou por: <strong><?= $palavraChave; ?></strong></p>

				<h2>Produtos</h2>

				<ul class="listarProdutosDestaque">

    		<?php
			$produto = array(
				'tabela' => 'catalogo_produtos', // Pega resultados da tabela catalogo_produtos
				'layout' => 'busca_produto', // Com o layout em applicaiton/views/templates/catalogo_produtos/_item_home.php
				'links' => array( // Link para rotas
					'url' => 'url_nome',
					'link' => 'catalogo'
				),
				'miniaturas' => array('detalhes'),
				'por_linha' => 1, // Listar dois resultados por linha 
				'where' =>  "(gercont_catalogo_produtos.nome LIKE '%".$palavraChave."%' OR  gercont_catalogo_produtos.descricao LIKE '%".$palavraChave."%')",
				'ativo' => 1,
				'idioma' => false				
			);
		
			$produto = $this->gercont->listagem($produto);

		if(!$produto) {

			echo "Nenhum produto relacionada à : " .$palavraChave;
			echo "<br>";
			echo "<br>"; 


		}else {

			echo $produto;
		}				
	
	      ?> 				
	 
	            </ul>

			</div>
		    <div class="col s12">    
	            <h2>Notícias</h2>
				
				<ul class="listarBlog">

    		<?php
			$noticia = array(
				'tabela' => 'noticias', // Pega resultados da tabela catalogo_produtos
				'layout' => 'busca_noticia', // Com o layout em applicaiton/views/templates/catalogo_produtos/_item_home.php
				'links' => array( // Link para rotas
					'url' => 'url_nome',
					'link' => 'catalogo'
				),
				'por_linha' => 1, // Listar dois resultados por linha 
				'where' =>  "(gercont_noticias.titulo LIKE '%".$palavraChave."%' OR  gercont_noticias.chamada LIKE '%".$palavraChave."%' OR  gercont_noticias.texto LIKE '%".$palavraChave."%')",
				
				'idioma' => false				
			);

			$noticia = $this->gercont->listagem($noticia);
		
			if(!$noticia) {

				echo "Nenhuma noticia relacionada à : " .$palavraChave;
				echo "<br>";
				echo "<br>"; 

			} else {

				echo $noticia;
				
			}				
	
	      ?>      
	      </ul>
	        </div>

				<div class="col s12">
	            <h2>Conteúdo</h2>

    		<?php
			$conteudo = array(
				'tabela' => 'conteudo', // Pega resultados da tabela catalogo_produtos
				'layout' => 'busca_conteudo', // Com o layout em applicaiton/views/templates/catalogo_produtos/_item_home.php
				'links' => array( // Link para rotas
					'url' => 'url_nome',
					'link' => 'catalogo'
				),
				'por_linha' => 1, // Listar dois resultados por linha 									// (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
				'where' =>  "(gercont_conteudo.titulo LIKE '%".$palavraChave."%' OR  gercont_conteudo.texto LIKE '%".$palavraChave."%')",				
				'ativo' => 1,	
				'idioma' => false				
			);

			$conteudo = $this->gercont->listagem($conteudo);
		
		if(!$conteudo) {

			echo "Nenhum conteudo relacionada à : " .$palavraChave;
			echo "<br>";
			echo "<br>"; 

		}else {

			echo $conteudo;
		}

		//var_dump($testeBuscaConteudo);
		//exit();

		//print_r($resultado);
		//exit();
		?>	
			        <!-- .bread -->
		        </div>

			</div>
		</div>
	</div>
	<!-- .rowTitle -->


</div>
<!-- .main -->