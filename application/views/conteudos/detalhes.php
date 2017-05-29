<?php
$cap = captcha();
?>

<div class="titleBar">
    
    <div class="container">
        
        <h1><?= $conteudo->titulo ?></h1>

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
                        <li><?= $conteudo->titulo ?></li>
                    </ul>
            </div>        
<br>
<br>
        <div class="texto">
    	   <?= $conteudo->texto ?>
        </div>

    	<?php
    	$config = array(
    		'tabela' => 'conteudo', // tabela
    		'campo' => 'imagens', // campo da tabela
    		'registro' => $conteudo->id, // Registro (id
    		'layout' => 'galeria_fotos', // Com o template em applicaiton/views/templates/noticias/_item_home.php
    		'img_ampliada' => null, // Imagem ampliada, null ou não definir para mostrar a original
    		'img_miniatura' => 'medium', // Imagem do thumb, null ou não definir para mostrar a medium
    		'por_linha' => 6 	// Listar dois resultados por linha 
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

        <?php if($conteudo->tipo == 1) { ?>


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
                            <option value="">Selecione</option>
                            <option value="Condomínio">Condomínio</option>
                            <option value="Cliente Residencial">Cliente Residencial</option>
                            <option value="Indústria">Indústria</option>
                            <option value="Empresa">Empresa</option>                          
                            <option value="Outros">Outros</option>                          
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

<?php if(isset($sucesso) && $sucesso == true && isset($js)) { ?>

    <script type="text/javascript"><?=$js;?></script>

<?php } ?>

        <?php } ?>



