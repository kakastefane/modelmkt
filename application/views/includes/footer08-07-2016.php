<footer>
	
	<div class="container">
		
		<div class="row">
			
			<div class="col-sm-12 col-md-3">
				
				<h3><img src="./public/images/logo-footer.png" alt=""></h3>

				<p>A CIMTEL Tecnologia em Automação desde 11 de novembro de 1987 atua de forma séria e compromissada no fornecimento de soluções inteligentes em automação e segurança.</p><br>
				<a href="#" title="Saiba mais" class="btn btn-default">Saiba mais</a>

			</div>

			<div class="col-sm-12 col-md-2">
				
				<h3>Acesso Rápido</h3>

				<nav class="menu_footer">
					<?= $configuracoes->menu ?>
				</nav>

			</div>

			<div class="col-sm-12 col-md-4">

				<h3>Curta nossa página no Facebook</h3>
				<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fcimtelsc&tabs&width=340&height=214&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=174540545958178" width="100%" height="214" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
				
			</div>

			<div class="col-sm-12 col-md-3">

				<h3>Fale Conosco</h3>

				<p><i class="fa fa-map-marker"></i> Av. Atlântica, 1421 - Jardim Atlântico <br>Florianópolis/SC <br> CEP 88095-700</p>
				<p><i class="fa fa-envelope"></i> cimtel@cimtel.com.br</p>
				<p><i class="fa fa-phone"></i> (48) 3240.5500</p>
				
			</div>

		</div>

	</div>
	<!-- .container -->

</footer>

<div class="boxCreditos">
	<div class="container">

		<p><?= $configuracoes->texto_rodape ?></p>
		<a href="http://www.webi.com.br" title="Agência WEBI">Desenvolvido por <strong>WEBI</strong></a>

	</div>
	<!-- .container -->
</div>
<!-- .boxCreditos -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="./public/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<?php if(isset($js)){ echo $js; } ?>
<script src='./public/codemin/js/jquery.meiomask.js'></script>
<script> $(document).ready(function(){ $('input[type=\"text\"]').setMask(); });</script>
<script src="./public/js/responsiveslides.min.js"></script>
<script src="./public/js/owl.carousel.js"></script>
<script src="./public/js/funcoes.js"></script>

</body>
</html>