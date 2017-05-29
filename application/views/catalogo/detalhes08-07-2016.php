<?php
$cap = captcha();
?>
<div class="titleBar">
    
    <div class="container">
        
        <h1><?= $detalhe->nome ?></h1>

    </div>
    <!-- .container -->

</div>
<!-- .titleBar -->

<div class="conteudo">

    <div class="container">

        <div class="row">
            
            <div class="col-sm-12 col-md-5">

                <a href="./uploads/catalogo_produtos/<?= $detalhe->id ?>/<?= $detalhe->capa ?>" class="fancybox"><img src="./uploads/catalogo_produtos/<?= $detalhe->id ?>/<?= $detalhe->capa ?>" alt="" width="100%"></a>
                
                <?php
                $config = array(
                    'tabela' => 'catalogo_produtos', // tabela
                    'campo' => 'imagens', // campo da tabela
                    'registro' => $detalhe->id, // Registro (id
                    'layout' => 'galeria_fotos', // Com o template em applicaiton/views/templates/catalogo_produtos/_galeria_fotos.php
                    'img_ampliada' => null, // Imagem ampliada, null ou não definir para mostrar a original
                    'img_miniatura' => 'medium', // Imagem do thumb, null ou não definir para mostrar a medium
                    'por_linha' => 3    // Listar dois resultados por linha 
                                                        // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
                );
                $fotos = $this->gercont->fotos($config); // Guarda o retorno das fotos ?>

                <?php if($fotos){ // Se tiver fotos mostra o título e as fotos ?>
                <ul class="galeriaProdutos">
                    <?= $fotos ?>
                </ul>
                <?php } ?>

            </div>

            <div class="col-sm-12 col-md-7">
                                
                <?= $detalhe->descricao ?>

               <!-- <a href="./catalogo/carrinho/adicionar/<?= $detalhe->id ?>" class="btn btn-primary btn-lg" title="Adicionar ao Orçamento">Adicionar ao Orçamento</a> -->

            </div>

        </div>

    </div>

</div>

<section class="interesse">
    
    <div class="container">
      <div class="row">
                <div class="alert alert-success hide" id="sucesso_formulario"><?= $this->lang->line('contato_sucesso') ?></div>
                <div class="alert alert-error hide" id="erro_formulario"></div>
      </div>   
        
        <div class="row">
            
            <div class="col-sm-12 col-md-8 col-md-offset-2">

                <h2>Tenho Interesse</h2>

                <form action="./<?= $this->lang->line('rota_contato') ?>/enviar" class="row" id="form_contato">

                    <div class="form-group col-sm-12 col-md-6">
                        <label><?= $this->lang->line('contato_nome') ?>*</label>
                        <input type="text" name="nome" class="form-control required" placeholder="<?= $this->lang->line('contato_nome') ?>">
                    </div>

                    <div class="form-group col-sm-12 col-md-6">
                        <label><?= $this->lang->line('contato_email') ?>*</label>
                        <input type="text" name="email" class="form-control required email" placeholder="<?= $this->lang->line('contato_email') ?>">
                    </div>

                    <div class="form-group col-sm-12 col-md-6">
                        <label><?= $this->lang->line('contato_telefone') ?></label>
                        <input type="text" name="telefone" id="telefone" class="form-control " placeholder="(99) 9999-9999">
                    </div>

                    <div class="form-group col-sm-12 col-md-6">
                        <label>Estou interessado como:</label>
                        <select name="interessado" id="interessado" class="form-control">
                            <option value="revendedor">Revendedor</option>
                            <option value="comprador">Comprador</option>
                        </select>
                    </div>

                    <div class="form-group col-sm-12">
                        <label><?= $this->lang->line('contato_mensagem') ?>*</label>
                        <textarea name="mensagem" class="form-control required" placeholder="<?= $this->lang->line('contato_mensagem') ?>" rows="5"></textarea>
                    </div>

                        <div class="form-group col-sm-12 col-sm-12 col-md-4 col-md-offset-1">
                            <?= $cap['image']; ?>
                        </div>

                        <div class="form-group col-sm-2 col-md-offset--10">
                            <input placeholder="Captcha" class="form-control" name="captcha" />
                        </div>
                    

                    <div class="form-group col-sm-12 col-sm-12 col-md-4 col-md-offset-15">
                        <button type="submit" class="btn btn-primary btn-lg btn-block"><?= $this->lang->line('contato_enviar') ?></button>
                    </div>    </div>


                </form>

            </div>

        </div>

    </div>
    <!-- .container -->

</section>
<!-- .interesse -->

<section class="produtos">
    
    <div class="container">

        <h2>Produtos Relacionados</h2>
        
        <div class="listaProdutos">
            
            <ul class="row">
            <?php
            $produtos = array(
                'tabela' => 'catalogo_produtos', // Pega resultados da tabela catalogo_produtos
                'layout' => 'item_home', // Com o layout em applicaiton/views/templates/catalogo_produtos/_item_home.php
                'links' => array( // Link para rotas
                    'url' => 'url_nome',
                    'link' => 'catalogo'
                ),
                'por_linha' => 4, // Listar dois resultados por linha 
                                                    // (cria uma variarel '{quebra_linha}' com o valor 'primeiro' para o primeiro resultado de cada linha)
                'quantidade_linha' => 4, // Exibir 2 linhas por pagina
                'idioma' => false,
                'limit' => 4,
                'ordenar' => array('rand()')
            );

            if(isset($categoria)){

                $produtos['where'] = array('catalogo_categorias.url_nome' => $categoria);
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
            }

            $resultado = $this->gercont->listagem($produtos);
            echo $resultado; ?>
            </ul>

        </div>
        <!-- .listaProdutos -->

    </div>
    <!-- .container -->

</section>
<!-- .produtos -->