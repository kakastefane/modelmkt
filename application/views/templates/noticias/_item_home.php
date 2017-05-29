<?php

    $query = $this->db->query("SELECT 
          gercont_categoria_das_noticias.nome, gercont_categoria_das_noticias.url_nome
        FROM 
          gercont_categoria_das_noticias
        WHERE
          gercont_categoria_das_noticias.id = '".$categoria_das_noticias."'        

              ");

    foreach ($query->result() as $row)
    {
            $categoria = $row->nome;
            $url_categoria = $row->url_nome;
            
    }

?>

<li class="col-xs-12 col-sm-6 col-md-4">
    <a href="<?php echo "./noticias/".$url_categoria."/".$url_titulo;?>" title="{titulo}"><img src="{min_corte}" title="{titulo}" alt="{titulo}"></a>
    <h3>{titulo}</h3>
    <p>{chamada}</p>
    <a href="<?php echo "./noticias/".$url_categoria."/".$url_titulo;?>" title="Leia mais" class="btn btn-default">Leia mais</a><span class="pull-right data"><i class="fa fa-calendar"></i> {data_br}</span>
</li>