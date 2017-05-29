<!DOCTYPE html>
<html lang="pt-br">
    <head>
    <meta charset="utf-8">
    <title><?php
        if (isset($titulo)) {
            $titulo_site = $titulo . ' - ' . $configuracoes->titulo;
        } else {
            $titulo_site = $configuracoes->titulo;
        }
        echo $titulo_site;
        ?></title>
    <base href="<?= base_url() ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="<?= current_url() ?>" />
    <link rel="shortcut icon" href="./public/images/favicon-cimtel.ico" />
    <?php if (isset($configuracoes->publicador_link)) echo '<link rel="publisher" href="' . $configuracoes->publicador_link . '"/>'; ?>
    <?php if (isset($pgdescription)) echo '<meta name="description" content="' . $pgdescription . '"/>'; ?>
    <?php if (isset($pgkeywords)) echo '<meta name="keywords" content="' . $pgkeywords . '"/>'; ?>

    <!-- FACEBOOK -->
    <meta property="og:site_name" content="<?= $configuracoes->titulo ?>"/>
    <meta property="og:url" content="<?= current_url() ?>"/>
    <meta property="og:title" content="<?= $titulo_site ?>"/>
    <meta property="og:type" content="website"/>
    <?php if (isset($configuracoes->publicador)) echo '<meta property="article:publisher" content="' . $configuracoes->publicador . '" />'; ?>
    <?php if (isset($fbimg)) echo '<meta property="og:image" content="' . $fbimg . '"/>'; ?>

    <!-- CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/lumen/bootstrap.min.css">
    <link rel="stylesheet" href="./public/fancybox/source/jquery.fancybox.css?v=2.1.5" />
    <link rel="stylesheet" href="./public/css/owl.carousel.css">
    <link rel="stylesheet" href="./public/css/normalize.css">
    <link rel="stylesheet" href="./public/css/estilo.css?v=<?= rand(111,999); ?>">

    <script type="text/javascript">
        window.smartlook||(function(d) {
        var o=smartlook=function(){ o.api.push(arguments)},h=d.getElementsByTagName('head')[0];
        var c=d.createElement('script');o.api=new Array();c.async=true;c.type='text/javascript';
        c.charset='utf-8';c.src='//rec.smartlook.com/recorder.js';h.appendChild(c);
        })(document);
        smartlook('init', 'ebedf3ffb69b4052157a801ee860ec4e596595c8');
    </script>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://modernizr.com/downloads/modernizr-latest.js"></script>
    <![endif]-->

    <?php if (isset($configuracoes->analytics)) { ?>

        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', '<?= $configuracoes->analytics ?>', 'auto');
            ga('send', 'pageview');

        </script>
    <?php } ?>


<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '1114442035290992'); 
fbq('track', 'PageView');
</script>
<noscript>
<img height="1" width="1" src="https://www.facebook.com/tr?id=1114442035290992&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->

<script type="text/javascript">
_linkedin_data_partner_id = "19833";
</script><script type="text/javascript">
(function(){var s = document.getElementsByTagName("script")[0];
var b = document.createElement("script");
b.type = "text/javascript";b.async = true;
b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
s.parentNode.insertBefore(b, s);})();
</script>

</head>

<body>

<div class="modal fade" id="busca" tabindex="-1" role="dialog" aria-labelledby="buscaLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <form action="./busca" class="formBusca">
            <div class="row">
                <div class="col-sm-12 col-md-8">
                    <input type="text" name="busca" id="inputBusca" class="form-control input-lg" value="" placeholder="O que você procura?" required="required"   title="">
                </div>
                <div class="col-sm-12 col-md-4">
                    <button class="btn btn-primary btn-lg">Procurar</button>
                </div>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="topBar">
    
    <div class="container">

        <div class="row">

            <div class="col-sm-7">

                <?php if ($configuracoes->link_facebook != "" || $configuracoes->link_twitter != "" || $configuracoes->link_googleplus != "" || $configuracoes->link_instagram != "" || $configuracoes->link_linkedin != "" || $configuracoes->link_youtube != "") { ?>
                <ul class="socialLinks">
                    <?php if ($configuracoes->link_facebook != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_facebook ?>" title="Facebook"><i class="fa fa-facebook"></i></a></li><?php } ?>
                    <?php if ($configuracoes->link_twitter != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_twitter ?>" title="Twitter"><i class="fa fa-twitter"></i></a></a></li><?php } ?>
                    <?php if ($configuracoes->link_googleplus != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_googleplus ?>" title="Google Plus"><i class="fa fa-google-plus"></i></a></a></li><?php } ?>
                    <?php if ($configuracoes->link_instagram != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_instagram ?>" title="Instagram"><i class="fa fa-instagram"></i></a></a></li><?php } ?>
                    <?php if ($configuracoes->link_linkedin != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_linkedin ?>" title="LinkedIn"><i class="fa fa-linkedin"></i></a></a></li><?php } ?>
                    <?php if ($configuracoes->link_youtube != "") { ?><li><a target="_blank" href="<?= $configuracoes->link_youtube ?>" title="Youtube"><i class="fa fa-youtube"></i></a></a></li><?php } ?>
                </ul>
                <?php } ?>

                <a href="https://www63.bb.com.br/portalbb/boleto/boletos/hc21e,802,3322,10343.bbx?_ga=1.47690343.1132917307.1457122781" target="_blank" class="btnBoleto hidden-xs hidden-sm"><img src="./public/images/boletos.png" alt=""></a>
                <a href="https://www63.bb.com.br/portalbb/boleto/boletos/hc21e,802,3322,10343.bbx?_ga=1.47690343.1132917307.1457122781" target="_blank" class="btnBoleto hidden-md hidden-lg"><img src="./public/images/boletos.png" alt=""></a>

            </div>

            <form action="./busca" class="col-sm-5 busca">
                <div class="row">
                    <div class="col-sm-12 col-md-8">
                        <input type="text" name="busca" id="inputBusca" class="form-control" value="" placeholder="O que você está procurando?" required="required"   title="">
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <button class="btn btn-primary btn-block">Buscar <i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form>

        </div>
        
    </div>

</div>

<header id="header">
    <div class="container">

        <?php if (!$this->uri->segment(1)) { ?>
            <h1><a class="logo" href="<?= base_url(); ?>" title="<?= $titulo_site ?>"><img src="./public/images/logo.png" alt="<?= $titulo_site ?>"></a></h1>
        <?php } else { ?>
            <p><a class="logo" href="<?= base_url(); ?>" title="<?= $titulo_site ?>"><img src="./public/images/logo.png" alt="<?= $titulo_site ?>"></a></p>
        <?php } ?>

        <nav class="menuResponsivo hidden-md hidden-lg">
            <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                <i class="fa fa-bars"></i>
            </a>
            <div class="collapse" id="collapseExample">
                <?= $configuracoes->menu ?>            
            </div>

        </nav>

        <nav class="menu hidden-xs hidden-sm">
            <?= $configuracoes->menu ?>
        </nav>


    </div>
            <!-- <div class="col s12 m8 l8">
                <form action="./resultado-busca" method="POST" class="formBusca">
                    <input type="text" placeholder="Digite aqui..." name="palavraChave">
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>  -->   
    <!-- .container -->
</header>