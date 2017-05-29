<div class="titleBar">
    
    <div class="container">
        
        <h1><?= $detalhe->titulo ?></h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="conteudo">

    <div class="container">

        <div class="texto">
           <?= $detalhe->texto ?>
        </div>

        <?php
        $config = array(
            'tabela' => 'noticias', // tabela
            'campo' => 'imagens', // campo da tabela
            'registro' => $conteudo->id, // Registro (id
            'layout' => 'galeria_fotos', // Com o template em applicaiton/views/templates/noticias/_item_home.php
            'img_ampliada' => null, // Imagem ampliada, null ou não definir para mostrar a original
            'img_miniatura' => 'medium', // Imagem do thumb, null ou não definir para mostrar a medium
            'por_linha' => 6    // Listar dois resultados por linha 
                                                // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
        );
        $fotos = $this->gercont->fotos($config); // Guarda o retorno das fotos ?>

        <?php if($fotos){ // Se tiver fotos mostra o título e as fotos ?>
            <ul class="row galeria_conteudo">
                <?= $fotos ?>
            </ul>
        <?php } ?>

    </div>

</div>


<section class="clientes">
    
    <div class="container">
        
        <h2>Últimas do Blog</h2>

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
                    ),
                    'ordenar' => array('id', 'desc')
                );
                echo $this->gercont->listagem($noticias); ?>
            </ul>

        </div>

    </div>
    <!-- .container -->

</section>