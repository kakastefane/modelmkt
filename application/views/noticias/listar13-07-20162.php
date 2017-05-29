<div class="titleBar">
    
    <div class="container">
        
        <h1>Notícias</h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="noticias">

    <div class="container">

        <div class="row">

            <div class="col-sm-12 col-md-12">

                <div class="listaNoticias">
                    
                    <ul class="row">
                        <?php
                        $noticias = array(
                            'tabela' => 'noticias', // Pega resultados da tabela noticias
                            'layout' => 'item_listagem', // Com o layout em applicaiton/views/templates/noticias/_item_home.php
                            'links' => array( // Link para rotas
                                'url' => 'url_titulo',
                                'link' => $this->lang->line('rota_noticias')
                            ),
                            'por_linha' => 1,
                            'quantidade_linha' => 5,
                            'miniaturas' => array('corte'),
                            'ordenar' => array('data','desc'), // Ordenar os resultados
                            'where' => array('data <=' => date('Y-m-d'))
                        );
                        $resultado = $this->gercont->listagem($noticias);
                        if ($resultado)
                            echo $resultado;
                        else
                            echo "<h3>Nenhuma notícia encontrado</h3>";
                        ?>
                    </ul>

                    <?php if ($resultado) echo $this->pagination->create_links(); ?>

                </div>
                <!-- .listaNoticias -->

            </div>

        </div>
        <!-- .row -->

    </div>
    <!-- .container -->

</div>
<!-- .noticias -->