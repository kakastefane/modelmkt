
<?php

    $query = $this->db->query("SELECT 
          gercont_categoria_das_noticias.nome, gercont_categoria_das_noticias.url_nome, gercont_categoria_das_noticias.id 
        FROM 
          gercont_categoria_das_noticias
        WHERE
          gercont_categoria_das_noticias.url_nome = '".$this->uri->segment(2)."'        

              ");

    foreach ($query->result() as $row)
    {
            $categoria = $row->nome;
            $url_categoria = $row->url_nome;
            $idCategoriaNoticia = $row->id;
            
    }

?>

<div class="titleBar">
    
    <div class="container">
        
        <h1>Notícias</h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="noticias">

    <div class="container">

            <div>
                    <ul class="bread">
                        <li><a href="./">Inicial</a></li>
                        <li>/</li>
                        <li><a href="./noticias"><?= $titulo ?></a></li>
                        <li>/</li>
                        <li><?= $categoria ?></li>
                    </ul>
            </div>        
<br>
<br>

       <div class="col-sm-12 col-md-9">

        <div class="listaProdutos">

           <div class="listaNoticias">
            
            <ul class="row">
                <?php
                $noticias = array(
                    'tabela' => 'noticias', // Pega resultados da tabela noticias
                    'layout' => 'item_home', // Com o layout em applicaiton/views/templates/noticias/_item_home.php
                    'limit' => 25, // Lista apenas os 4 ultimos registros
                    'miniaturas' => array('corte'),
                    'links' => array( // Link para rotas
                        'url' => 'url_titulo',
                        'link' => '',
                    ),
                    'ordenar' => array('id', 'desc'),
                    'where' => "gercont_noticias.categoria_das_noticias = ".$idCategoriaNoticia,
                );
                echo $this->gercont->listagem($noticias); ?>
            </ul>

        </div>
        <!-- .row -->
      </div>  
     </div> 

            <div class="col-sm-12 col-md-3">

                <div class="boxSidebar">
                    
                    <h3>Categorias</h3>

                    <ul>
                    <?php
                        $categorias = array(
                        'tabela' => 'categoria_das_noticias', // Pega resultados da tabela categorias
                        'layout' => 'item_lista_categoria', // Com o layout em applicaiton/views/templates/catalogo_categorias/_item_home.php
                        'links' => array( // Link para rotas
                                    'url' => 'url_nome',
                                    'link' => 'noticias'
                                ),
                                'limit' => 15 // Lista apenas os 4 ultimos registros
                            );
                        
                        echo $this->gercont->listagem($categorias); 
                 
                    ?>                    

                    </ul>

                </div>
                
            </div>

    </div>
    <!-- .container -->

</div>

 

<!-- .noticias -->