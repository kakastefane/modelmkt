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
    <link rel="shortcut icon" href="./public/images/favicon.ico" />
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
    <link rel="stylesheet" href="./public/css/estilo.css">

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

</head>

<body>

<header id="header">
    <div class="container">

        <?php if (!$this->uri->segment(1)) { ?>
            <h1><a class="logo" href="<?= base_url(); ?>" title="<?= $titulo_site ?>"><img src="./public/images/logo.png" alt="<?= $titulo_site ?>"></a></h1>
        <?php } else { ?>
            <p><a class="logo" href="<?= base_url(); ?>" title="<?= $titulo_site ?>"><img src="./public/images/logo.png" alt="<?= $titulo_site ?>"></a></p>
        <?php } ?>

        <nav class="menu">
            <?= $configuracoes->menu ?>
        </nav>

    </div>
    <!-- .container -->
</header>
