<?php 

if($this->uri->segment(2) == false) {

	$where = array(
	            
	            'codemin_opcoes_selecionadas.tabela' => 'catalogo_produtos', 
	            'codemin_opcoes_selecionadas.campo' => 'categoria',
	            'codemin_opcoes_selecionadas.id_registro' => $id
	         );
	$this->db->select('catalogo_categorias.*');
	$this->db->join('catalogo_categorias', 'catalogo_categorias.id = codemin_opcoes_selecionadas.id_opcao', 'inner');
	$this->db->where($where);
	$linhaCategoria = $this->db->get('codemin_opcoes_selecionadas', $where)->row();

	$url = str_replace('//', '/'.$linhaCategoria->url_nome.'/', $url);

}

?>

<li class="col-xs-12 col-sm-6 col-md-4">
    <div class="padd">
        <a href="<?=$url?>" title="{nome}"><img src="{imagem}" title="{nome}" alt="{nome}"></a>
        <a href="<?=$url?>" title="{nome}"><h3>{nome}</h3></a>
        <a href="<?=$url?>" title="{nome}"><p>{descritivo}</p></a>
        <a href="<?=$url?>" title="{nome}" class="btn btn-primary">Conheça o Produto</a>
    </div>
</li>