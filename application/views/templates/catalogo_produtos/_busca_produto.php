
<?php
$this->db->select('catalogo_categorias.*');
$this->db->from('codemin_opcoes_selecionadas');
$this->db->join('catalogo_categorias', 'codemin_opcoes_selecionadas.id_opcao = catalogo_categorias.id', 'inner');
$this->db->where('codemin_opcoes_selecionadas.tabela', 'catalogo_produtos');
$this->db->where('codemin_opcoes_selecionadas.campo', 'categoria');
$this->db->where('codemin_opcoes_selecionadas.id_registro', $id);

$sql = $this->db->get();

if($sql->num_rows() == 0) {

	$resultadoCategoria = 'Nenhuma Categoria Selecionada';

}else {

	$resultadoCategoria = null;
	$c = 0;

	foreach ($sql->result() as $linha) {
		
		if($c > 0) { $char = ', '; } else {	$char = null; }

		$resultadoCategoria .= $char.$linha->nome;

		$c++;

	}

}


?>



<li>
	<div class="col s12 m8 l8">
        <a href="./catalogo/categoria-nova/{url_nome}">
          <figure><img class="imgResponsiva" src="{min_detalhes}" alt="{nome}"></figure>
        </a>
    </div> 
    <div class="col s12 m4 l4">
        <h2>{nome}</h2>
        <small><?= $resultadoCategoria; ?></small>
        <p>{descritivo}</p>
        <hr>
        <a href="./catalogo/categoria-nova/{url_nome}" class="verProduto">Ver produto</a>
        <a href="./contato" class="contatar">Contatar</a>
    </div>
</li>