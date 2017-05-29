<div class="titleBar">
    
    <div class="container">
        
        <h1>Busca</h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<section class="noticias">
 
    <div class="container">
          <p class="palavra_pesquisada">Você pesquisou por: <strong><?php echo $buscar; ?></strong></p>        
        <h2>Notícias</h2>

        <div class="listaNoticias">
            
            <ul class="row">
                <?php
            $noticias = array(
                'tabela' => 'noticias', // Pega resultados da tabela noticias
                'layout' => 'item_home', // Com o layout em applicaiton/views/templates/noticias/_item_home.php
                'links' => array(// Link para rotas
                    'url' => 'url_titulo',
                    'link' => $this->lang->line('rota_noticias')
                ),
                'buscar' => $buscar,
                'por_linha' => 2, // Listar dois resultados por linha 
                // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
                'quantidade_linha' => 9999, // Exibir 2 linhas por pagina
                'miniaturas' => array('corte'),                
                'data_pub' => TRUE,
                'ordenar' => array("id", "DESC")
            );
            $res = $this->gercont->listagem($noticias);
            if ($res){
                echo $res;
            }else {

                 echo "<center>Nenhuma notícia relacionada!</center><br>";               
            } ?>
            </ul>

        </div>

    </div>
    <!-- .container -->

</section>

<section class="noticias">
    
    <div class="container">
        
        <h2>Conteudo</h2>

        <div class="listaNoticias">
            
            <ul class="row">
                <?php
            $conteudo = array(
                'tabela' => 'conteudo', // Pega resultados da tabela noticias
                'layout' => 'item_home_busca', // Com o layout em applicaiton/views/templates/noticias/_item_home.php
                    'links' => array( // Link para rotas
                        'url' => 'url_titulo',
                        'link' => ''
                    ),
                'buscar' => $buscar,
                'por_linha' => 2, // Listar dois resultados por linha 
                // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
                'quantidade_linha' => 9999, // Exibir 2 linhas por pagina
                'ordenar' => array("id", "DESC")
            );
            $res = $this->gercont->listagem($conteudo);
            //echo $this->db->last_query();
            //exit();
            if ($res){
                echo $res;
            }else {
                echo "<center>Nenhum conteudo relacionado!</center><br>";
            } ?>
            </ul>

        </div>

    </div>
    <!-- .container -->

</section>

</div>
<!-- .main -->