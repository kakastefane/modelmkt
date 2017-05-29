<div class="titleBar">
    
    <div class="container">
        
        <h1>Categorias</h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="produtos">

    <div class="container">

        <div class="listaProdutos">
            
            <ul class="row">
                <?php
                $categorias = array(
                    'tabela' => 'catalogo_categorias', // Pega resultados da tabela catalogo_categorias
                    'layout' => 'item_home', // Com o layout em applicaiton/views/templates/catalogo_categorias/_item_home.php
                    'links' => array( // Link para rotas
                        'url' => 'url_nome',
                        'link' => 'catalogo/categoria'
                    ),
                    'idioma' => false
                );
                echo $this->gercont->listagem($categorias); ?>
            </ul>

        </div>

    </div>

</div>