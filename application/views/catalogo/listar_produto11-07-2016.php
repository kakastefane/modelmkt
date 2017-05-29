<div class="titleBar">
    
    <div class="container">
        
        <h1><?= $titulo; ?></h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="produtos">

    <div class="container">

        <div class="row">

            <div class="col-sm-12 col-md-9">

                <div class="listaProdutos">
                    
                    <ul class="row">
                        <?php
                        $produtos = array(
                            'tabela' => 'catalogo_produtos', // Pega resultados da tabela catalogo_produtos
                            'layout' => 'item_listagem', // Com o layout em applicaiton/views/templates/catalogo_produtos/_item_home.php
                            'links' => array( // Link para rotas
                                'url' => 'url_nome',
                                'link' => 'catalogo'
                            ),
                            'por_linha' => 4, // Listar dois resultados por linha 
                                                                // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
                            'quantidade_linha' => 3, // Exibir 2 linhas por pagina
                            'idioma' => false,
                            'ordenar' => array('ordenar', asc)
                        );

                        if(isset($categoria)){

                            $produtos['where'] = array(
                                                'catalogo_categorias.url_nome' => $categoria, 
                                                'codemin_opcoes_selecionadas.tabela' => 'catalogo_produtos', 
                                                'codemin_opcoes_selecionadas.campo' => 'categoria'
                                                );
                            $produtos['join'] = array(
                            'codemin_opcoes_selecionadas' => 'catalogo_produtos.id = codemin_opcoes_selecionadas.id_registro',
                            'catalogo_categorias' => 'catalogo_categorias.id = codemin_opcoes_selecionadas.id_opcao'
                            );
                            $produtos['uri_segment'] = 4;
                            $produtos['links'] = array(
                                'url' => 'url_nome',
                                'link' => 'catalogo/' . $categoria,
                                'link_pag' => 'catalogo/categoria/' . $categoria
                            );
                            $produtos['agrupar'] = 'catalogo_produtos.id';
                        }
                        $resultado = $this->gercont->listagem($produtos);
                        echo $resultado; ?>
                    </ul>

                    <?php if($resultado) echo $this->pagination->create_links(); ?>

                </div>
                <!-- .listaNoticias -->

            </div>

            <div class="col-sm-12 col-md-3">

                <div class="boxSidebar">
                    
                    <h3>Categorias</h3>

                    <ul>
                    <?php
                        $categorias = array(
                        'tabela' => 'catalogo_categorias', // Pega resultados da tabela categorias
                        'layout' => 'item_home_lista_prod', // Com o layout em applicaiton/views/templates/catalogo_categorias/_item_home.php
                        'links' => array( // Link para rotas
                                    'url' => 'url_nome',
                                    'link' => 'catalogo/categoria'
                                ),
                                'limit' => 15 // Lista apenas os 4 ultimos registros
                            );
                        
                        echo $this->gercont->listagem($categorias); 
                 
                    ?>                    

                    </ul>

                </div>
                
            </div>

        </div>
        <!-- .row -->

    </div>

</div>