<?php

    $query = $this->db->query("SELECT 
          gercont_categoria_das_noticias.nome, gercont_categoria_das_noticias.url_nome
        FROM 
          gercont_categoria_das_noticias
        WHERE
          gercont_categoria_das_noticias.id = '".$detalhe->categoria_das_noticias."'        

              ");

    foreach ($query->result() as $row)
    {
            $categoria = $row->nome;
            $url_categoria = $row->url_nome;
            
    }




?>

<div class="titleBar">
    
    <div class="container">
        
        <h1><?= $detalhe->titulo ?></h1>

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
                        <li><a href="./noticias/<?=$url_categoria?>"><?= $categoria ?></a></li>
                        <li>/</li>
                        <li><?= $detalhe->titulo ?></li>
                    </ul>
            </div>        
<br>
<br>
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
<br>

                <div class="fb-share-button" data-href="<?php echo base_url()."/noticias/".$url_categoria."/".$detalhe->url_titulo;?> " data-layout="button" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse">Compartilhar</a></div>

    </div>



</div>

<section class="clientes">
    
    <div class="container">
        
        <h2>Últimas Notícias</h2>

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
                    'ordenar' => array('id', 'desc'),
                    'where' => "gercont_noticias.id <> ".$detalhe->id." ",
                );
                echo $this->gercont->listagem($noticias); ?>
            </ul>

        </div>

    </div>
    <!-- .container -->

</section>