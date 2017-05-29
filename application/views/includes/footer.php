<footer>
	
	<div class="container">
		
		<div class="row">
			
			<div class="col-sm-12 col-md-3">
				
				<h3><img src="./public/images/logo-footer.png" title="CIMTEL Tecnologia em Automação" alt="CIMTEL Tecnologia em Automação"></h3>

				<p>A CIMTEL Tecnologia em Automação desde 11 de novembro de 1987 atua de forma séria e compromissada no fornecimento de soluções inteligentes em automação e segurança.</p><br>
				<a href="./empresa" title="Saiba mais" class="btn btn-default">Saiba mais</a>

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


<button id="modalPromo" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none;"></button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-body" style="position: relative;">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="position: absolute; top: 2px; right: 5px;"><span aria-hidden="true">&times;</span></button>
            <a href="http://cimtel.rds.land/assistencia-24horas-condominios" target="_blank" title=""><img src="./public/images/popup.png" alt="" style="width: 100%;"></a>
        </div>
    </div>
    </div>
</div>



<script type="text/javascript" async src="https://d335luupugsy2.cloudfront.net/js/loader-scripts/80a5c70c-30db-4586-acb6-85a66bb017ac-loader.js" ></script>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="./public/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
<?php if(isset($js)){ echo $js; } ?>
<script src='./public/codemin/js/jquery.meiomask.js'></script>
<script> $(document).ready(function(){ $('input[type=\"text\"]').setMask(); });</script>
<script src="./public/js/responsiveslides.min.js"></script>
<script src="./public/js/owl.carousel.js"></script>
<script src="./public/js/funcoes.js?v=<?= rand(111,999); ?>"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'pt-BR'}
</script>


<?php if ($this->uri->segment(1) == 'assistencia-24h') { ?>
<script>
    setTimeout(function(){
        $( "#modalPromo" ).trigger( "click" );
    }, 4000); 
</script>
<?php } ?>

</body>
</html>