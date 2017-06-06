-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Host: cimtel01site.mysql.dbaas.com.br
-- Generation Time: 06-Jun-2017 às 13:22
-- Versão do servidor: 5.6.35-81.0-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cimtel01site`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_banners`
--

CREATE TABLE `gercont_banners` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_nome` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `data_inicial` date NOT NULL,
  `data_final` date NOT NULL,
  `capa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_banners`
--

INSERT INTO `gercont_banners` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `nome`, `url_nome`, `link`, `data_inicial`, `data_final`, `capa`) VALUES
(1, 2, 0, 1, 0, 'Cameras de Segurança', 'cameras-de-seguranca', '#', '2016-06-23', '2016-06-23', 'banner-01.jpg'),
(2, 2, 1, 1, 0, 'Cameras de Segurança Azul', 'cameras-de-seguranca-azul', '#', '2016-06-23', '2016-06-23', 'banner-02.jpg'),
(3, 2, 0, 1, 0, 'CONTATO DE MANUTENÇÃO 24H', 'contato-de-manutencao-24h', '', '0000-00-00', '0000-00-00', 'banner.png'),
(4, 2, 2, 1, 0, 'As melhores câmeras de vigilância ', 'as-melhores-cameras-de-vigilancia-', '#', '0000-00-00', '0000-00-00', 'banner_2_(1).png'),
(5, 1, 3, 1, 0, 'CONTRATO DE MANUTENÇÃO 24H', 'contrato-de-manutencao-24h', './assistencia-24h', '0000-00-00', '0000-00-00', 'contrato_de_manutenção.png'),
(6, 1, 2, 1, 0, 'AS MELHORES CÂMERAS DE VIGILÂNCIA ', 'as-melhores-cameras-de-vigilancia--1', './catalogo/cftv', '0000-00-00', '0000-00-00', 'cftv1.png'),
(7, 1, 1, 1, 0, 'CONTROLE DE ACESSO', 'controle-de-acesso', './catalogo/controle-de-acesso/controle-de-acesso', '0000-00-00', '0000-00-00', 'controle_de_acesso.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_catalogo_categorias`
--

CREATE TABLE `gercont_catalogo_categorias` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_nome` varchar(255) NOT NULL,
  `capa` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `url_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_catalogo_categorias`
--

INSERT INTO `gercont_catalogo_categorias` (`id`, `ativo`, `ordenar`, `id_usuario`, `nome`, `url_nome`, `capa`, `descricao`, `url_descricao`) VALUES
(1, 1, 3, 1, 'Controle de Acesso', 'controle-de-acesso', 'controle-de-acesso-florianopolis-cimtel-capa-categoria.png', 'Registre toda movimentação e reforce sua segurança', 'registre-toda-movimentacao-e-reforce-sua-seguranca'),
(2, 0, 9, 1, 'Câmeras de Monitoramento', 'cameras-de-monitoramento', 'camera-cimtel1.jpg', 'Monitoramento..', 'monitoramento'),
(3, 1, 1, 1, 'CFTV', 'cftv', 'cftv-florianopolis.png', 'Encontre os melhores circuitos fechados de TV', 'encontre-os-melhores-circuitos-fechados-de-tv'),
(4, 1, 4, 1, 'Automação de Portões', 'automacao-de-portoes', 'r.png', 'Planejadas conforme o tamanho, peso e fluxo', 'planejadas-conforme-o-tamanho-peso-e-fluxo'),
(5, 1, 10, 1, 'Alarme de Incêndio', 'alarme-de-incendio', 'alarme-de-incendio-florianopolis-categoria.png', 'Equipamentos adequados e de empresa certificada', 'equipamentos-adequados-e-de-empresa-certificada'),
(6, 1, 7, 1, 'Portas Automáticas', 'portas-automaticas', 'porta-automatica-florianopolis.png', 'Pensou em portas automáticas, pensou Cimtel', 'pensou-em-portas-automaticas-pensou-cimtel'),
(7, 2, 0, 1, 'Automações Pivotantes', 'automacoes-pivotantes', 'automacoes-pivotantes.png', 'Produto versátil e aplicável em portas já existentes', 'produto-versatil-e-aplicavel-em-portas-ja-existentes'),
(8, 1, 8, 1, 'Cercas Elétricas', 'cercas-eletricas', 'cerca-eletrica-florianopolis-11.png', 'Sistema efetivo de proteção perimetral ', 'sistema-efetivo-de-protecao-perimetral-'),
(9, 1, 2, 1, 'Sistema de Comunicação', 'sistema-de-comunicacao', 'porteiro-eletronico-florianopolis.png', 'Implementação completa de sistemas integrados', 'implementacao-completa-de-sistemas-integrados'),
(10, 1, 6, 1, 'Sistema de Alarme', 'sistema-de-alarme', 'alarme-contra-roubo-florianopolis.png', 'Amplie sua segurança com um sistema confiável', 'amplie-sua-seguranca-com-um-sistema-confiavel'),
(11, 1, 5, 1, 'Iluminação de Emergência', 'iluminacao-de-emergencia', 'iluminacao-de-emergencia-florianopolis-3.png', 'Aliada a grandes marcas para garantir mais segurança', 'aliada-a-grandes-marcas-para-garantir-mais-seguranca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_catalogo_configuracao`
--

CREATE TABLE `gercont_catalogo_configuracao` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_catalogo_configuracao`
--

INSERT INTO `gercont_catalogo_configuracao` (`id`, `ativo`, `ordenar`, `id_usuario`, `email`) VALUES
(1, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_catalogo_pedidos`
--

CREATE TABLE `gercont_catalogo_pedidos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `observacoes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` double(10,2) NOT NULL,
  `data_hora` datetime NOT NULL,
  `visualizado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_catalogo_pedidos_produtos`
--

CREATE TABLE `gercont_catalogo_pedidos_produtos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantidade` int(5) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_catalogo_produtos`
--

CREATE TABLE `gercont_catalogo_produtos` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_nome` varchar(255) NOT NULL,
  `capa` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `imagens` tinyint(1) DEFAULT NULL,
  `descritivo` longtext NOT NULL,
  `descricao` longtext NOT NULL,
  `categoria` tinyint(1) DEFAULT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_catalogo_produtos`
--

INSERT INTO `gercont_catalogo_produtos` (`id`, `ativo`, `ordenar`, `id_usuario`, `nome`, `url_nome`, `capa`, `keywords`, `description`, `imagens`, `descritivo`, `descricao`, `categoria`, `valor`) VALUES
(1, 1, 20, 1, 'Portão Basculante (tração dupla)', 'portao-basculante-tracao-dupla', 'portao-basculante-tracionamento-duplo-2.png', 'portão basculante, portão para condomínio em florianópolis, automação de portões', 'Automação de portões basculantes em Florianópolis é com a Cimtel!', 0, 'Durabilidade muito além das expectativas do cliente', '<p style="text-align:justify">Solu&ccedil;&atilde;o ideal para <strong>port&otilde;es basculantes de alto fluxo</strong>, grandes, articulados, ou ainda de aplica&ccedil;&otilde;es especiais.</p>\n\n<p style="text-align:justify">O port&atilde;o basculante ser&aacute; tracionado dos dois lados, no entanto, por uma &uacute;nica automa&ccedil;&atilde;o, tornando o movimento perfeito e o funcionamento, a confiabilidade e a durabilidade muito al&eacute;m das expectativas do cliente.</p>\n', 0, '0.00'),
(2, 1, 21, 1, 'Portão Deslizante (tracão por corrente)', 'portao-deslizante-tracao-por-corrente', 'portao-deslizante-florianopolis-corrente.png', 'portão deslizantes, florianópolis', 'Portões deslizantes com tração por corrente em Florianópolis é com a Cimtel!', 0, 'Resistência e durabilidade para aplicações especiais', '<p style="text-align:justify">M&aacute;quinas para automa&ccedil;&atilde;o de <strong>port&otilde;es deslizantes tracionados por corrente</strong>. Uma exclusividade CIMTEL que garante resist&ecirc;ncia e durabilidade para aplica&ccedil;&otilde;es especiais, alto fluxo, grande port&otilde;es, e outras aplica&ccedil;&otilde;es que a sua necessidade requerer.</p>\n\n<p style="text-align:justify">Conhe&ccedil;a nossa linha de m&aacute;quinas deslizantes tracionadas por corrente e surpreenda-se.</p>\n', 0, '0.00'),
(3, 1, 19, 1, 'Portão Deslizante', 'portao-deslizante', 'portao-deslizante-florianopolis.png', '', '', 0, 'Fácil acesso para residências, condomínios e empresas', '<p style="text-align:justify">Automa&ccedil;&otilde;es para <strong>port&otilde;es deslizantes</strong>, planejadas conforme o tamanho, peso e fluxo, garantindo qualidade de funcionamento, durabilidade e f&aacute;cil acesso para resid&ecirc;ncias, condom&iacute;nios e empresas.</p>\n\n<p style="text-align:justify">Desde de pequenas, m&eacute;dias at&eacute; grandes aplica&ccedil;&otilde;es. Automa&ccedil;&otilde;es que chegam a 5 anos de garantia no sistema redutor, principal componente de um sistema de automa&ccedil;&atilde;o. Diferencial que s&oacute; uma empresa com qualidade comprovada pode oferecer.</p>\n', 0, '0.00'),
(4, 1, 18, 1, 'Portão Basculante', 'portao-basculante', 'portao-basculante-5.png', '', '', 0, 'Desde de pequenas, médias até grandes aplicações', '<p style="text-align:justify">Automa&ccedil;&otilde;es para <strong>port&otilde;es basculantes</strong>, planejadas conforme o tamanho, peso e fluxo, garantindo qualidade de funcionamento, durabilidade e f&aacute;cil acesso para resid&ecirc;ncias, condom&iacute;nios e empresas.</p>\n\n<p style="text-align:justify">Desde de pequenas, m&eacute;dias at&eacute; grandes aplica&ccedil;&otilde;es. Automa&ccedil;&otilde;es que chegam a 5 anos de garantia no sistema redutor, principal componente de um sistema de automa&ccedil;&atilde;o.&nbsp;Diferencial que s&oacute; uma empresa com qualidade comprovada pode oferecer.</p>\n', 0, '0.00'),
(5, 1, 17, 1, 'Projeto de sistema CFTV', 'projeto-de-sistema-cftv', 'cftv-florianopolis1.png', 'CFTV', 'CFTV em Florianópolis e região é com a Cimtel!', 0, 'Tenha o projeto ideal para sua necessidade', '<p>O sucesso de um projeto de implanta&ccedil;&atilde;o do <strong>CFTV&nbsp;(circuito fechado de TV)</strong> depende diretamente dos objetivos a serem alcan&ccedil;ados, objetivos estes que devem ser minuciosamente tra&ccedil;ados e discutidos antes da efetiva implanta&ccedil;&atilde;o deste tipo de sistema.</p>\n\n<p>Dentre os principais objetivos levantados nos mais diversos projetos que a CIMTEL realiza, est&atilde;o:</p>\n\n<p><strong>&gt;</strong> Identificar pessoas e ve&iacute;culos que entram e saem do empreendimento diariamente;</p>\n\n<p><strong>&gt;</strong> Vigiar os pontos de poss&iacute;vel acesso de meliantes ao interior do empreendimento;</p>\n\n<p><strong>&gt;</strong> Proteger patrim&ocirc;nio contra atos de vandalismo;</p>\n\n<p><strong>&gt;</strong> Zelar pelo correto funcionamento de guaritas e recep&ccedil;&otilde;es;</p>\n\n<p><strong>&gt;</strong> Controlar o acesso &agrave;s &aacute;reas de uso comum;</p>\n\n<p><strong>&gt;</strong> Possibilitar que as imagens anteriormente citadas sejam perfeitamente n&iacute;tidas 24 horas por dia, 7 dias por semana, 365 dias por anos, seja dia, seja noite.</p>\n\n<p><strong>&gt;</strong> Possibilitar que todas estas imagens sejam gravadas por um per&iacute;odo m&iacute;nimo de 30 dias.</p>\n\n<p><strong>&gt;</strong> Possibilitar que os equipamentos respons&aacute;veis pelo monitoramento das imagens estejam protegidos contra vandalismo, quebra proposital ou roubo (assalto), manipula&ccedil;&atilde;o de imagens e a&ccedil;&atilde;o de deteriora&ccedil;&atilde;o (poeira excessiva, umidade, altas temperaturas, entre outros);</p>\n\n<p><strong>&gt;</strong> Por &uacute;ltimo e n&atilde;o menos importante, possibilitar que o sistema funcione por no m&iacute;nimo 1(uma) hora em caso de falta de energia el&eacute;trica convencional.</p>\n', 0, '0.00'),
(6, 1, 16, 1, 'Gravadores DVR, NVR e AHD', 'gravadores-dvr-nvr-e-ahd', 'gravador-dvr-nvr-florianopolis1.png', 'gravadores, dvr, nvr, ahd, cftv', 'Os melhores gravadores para CFTV em Florianópolis estão na Cimtel!', 0, 'Operação rápida e precisa na visualização e na gravação', '<p>Linha completa de gravadores DVR, NVR, linha anal&oacute;gica, AHD e IP. Gravadores Tr&iacute;bridos para c&acirc;meras AHD, Anal&oacute;gica e IP.</p>\n\n<p><strong>&gt;</strong> Grava&ccedil;&atilde;o em AHD (Analog High Definition) e resolu&ccedil;&atilde;o 720p</p>\n\n<p><strong>&gt;</strong> Equipamentos com &nbsp;Sa&iacute;da de v&iacute;deo HDMI / VGA Full HD (1920x1080p)</p>\n\n<p><strong>&gt;</strong> Importantes fun&ccedil;&otilde;es de rede DHCP, SMTP, NTP, PPPoE, DDNS, Filtro IP e UPnTP</p>\n\n<p><strong>&gt;</strong> Servi&ccedil;os DDNS, No-IP e Dyndns. Acessos via Internet Explorer, Mozilla Firefox e Google Chrome;</p>\n\n<p><strong>&gt;</strong> Software AHDS e AHDS Mobile (iOS e Android)</p>\n\n<p><strong>&gt;</strong> Acesso Nuvem</p>\n\n<p><strong>&gt;</strong> Grava&ccedil;&atilde;o em tempo real</p>\n\n<p>E muitas outras tecnologia a sua disposi&ccedil;&atilde;o. Entre em contato e conhe&ccedil;a os equipamentos perfeitos para as necessidades do seu empreendimento e para a seguran&ccedil;a da sua fam&iacute;lia.</p>\n', 0, '0.00'),
(7, 1, 15, 1, 'Câmeras AHD', 'cameras-ahd', 'cameras-ahd-em-florianopolis1.png', 'câmeras de segurança em florianópolis', 'Câmeras de segurança de alta resolução e resistentes para CFTV em Florianópolis é com a Cimtel', 0, 'Excelente resolução para a imagem certa', '<p>C&acirc;meras de 720P, 960P, com Infravermelho adaptado a cada necessidade.</p>\n\n<p>As <strong>c&acirc;meras AHD</strong> utilizam a mesma estrutura de cabeamento das c&acirc;meras anal&oacute;gicas (necess&aacute;rio avalia&ccedil;&atilde;o in loco), o que facilita o upgrade dos sistemas atuais.</p>\n\n<p><strong>&gt;</strong> Sensor digitais de 1.3MP</p>\n\n<p><strong>&gt;</strong> Lentes fixas ou varifocais de 2,8~12mm</p>\n\n<p><strong>&gt;</strong> Alcance IR de at&eacute; 30m, 40m, 80m, entre outros modelos</p>\n\n<p><strong>&gt;</strong> ICR - D&amp;N</p>\n\n<p><strong>&gt;</strong> Menu OSD</p>\n\n<p><strong>&gt;</strong> BLC/HLC</p>\n\n<p><strong>&gt;</strong> 2D/3D DNR</p>\n\n<p><strong>&gt;</strong> M&aacute;scara de privacidade</p>\n\n<p>S&atilde;o algumas das possibilidades das c&acirc;meras AHD, alta tecnologia e qualidade.&nbsp;Entre em contato conosco e conhe&ccedil;a os equipamentos perfeitos para as necessidades do seu empreendimento e para seguran&ccedil;a da sua fam&iacute;lia.</p>\n\n<p>&nbsp;</p>\n', 0, '0.00'),
(8, 1, 14, 1, 'Câmeras Infravermelho ', 'cameras-infravermelho-', 'camera-infravermelho-florianopolis-capa.png', 'infravermelho, câmeras de segurança', 'Câmeras infravermelho? Câmeras de segurança? Em Florianópolis procure a Cimtel!', 0, 'Imagem de qualidade em distâncias de até 30 metros', '<p>A <strong>c&acirc;mera infravermelho</strong> HMC-BU100-20B da HDL &eacute; uma solu&ccedil;&atilde;o anal&oacute;gica de &oacute;timo desempenho e garante uma imagem n&iacute;tida e de alta resolu&ccedil;&atilde;o.</p>\n\n<p>Possui leds infravermelhos que garantem uma imagem de qualidade a uma dist&acirc;ncia de at&eacute; 20 metros, mesmo em locais sem ilumina&ccedil;&atilde;o (0 lux).</p>\n\n<p>Conta tamb&eacute;m com caixa prote&ccedil;&atilde;o que permite sua instala&ccedil;&atilde;o em ambientes externos sem a necessidade de prote&ccedil;&atilde;o adicional. Temos ainda outros modelos de c&acirc;meras com infravermelho.</p>\n', 0, '0.00'),
(9, 1, 12, 1, 'Controle de Acesso', 'controle-de-acesso', 'controle-de-acesso-florianopolis-cimtel.png', 'controle de acesso, florianópolis', 'Controle de Acesso em residências, condomínios, indústrias e empresas é com a Cimtel!', 0, 'Registro completo de todas as movimentações', '<p>Utilizados em resid&ecirc;ncias, condom&iacute;nios residenciais e comerciais, empresas e ind&uacute;strias, os sistemas de <strong>controle de acesso</strong> de moradores, funcion&aacute;rios e/ou visitantes, possibilitam registro total de todas as movimenta&ccedil;&otilde;es (entradas e sa&iacute;das) do estabelecimento, tanto para acessos externos como acessos internos.</p>\n\n<p>Desde um simples controle&nbsp;de acesso por cart&atilde;o magn&eacute;tico at&eacute; a alta tecnologia de acessos biom&eacute;tricos, a CIMTEL garante aos seus clientes a satisfa&ccedil;&atilde;o total das necessidades de qualquer empreendimento quando o assunto &eacute; controle de acesso.</p>\n\n<p>Associado a um sistema de grava&ccedil;&atilde;o digital, o Controle de acesso registra todos os movimentos das pessoas para possibilitar uma an&aacute;lise dos riscos em potencial. Em edif&iacute;cios comerciais, &eacute; poss&iacute;vel liberar o acesso de determinadas pessoas<br />\nsomente para o andar espec&iacute;fico autorizado no seu cart&atilde;o magn&eacute;tico de acesso.</p>\n\n<p>A CIMTEL conta ainda com a uni&atilde;o dos mais tecnol&oacute;gicos controles de acesso com outros equipamentos fundamentais a seguran&ccedil;a como:</p>\n\n<p><strong>&gt;</strong> Alarmes contra-roubo;</p>\n\n<p><strong>&gt;</strong> Portas e port&otilde;es autom&aacute;ticos;</p>\n\n<p><strong>&gt;</strong> Sistemas de circuito interno de TV;</p>\n\n<p><strong>&gt;</strong> Fechaduras eletromagn&eacute;ticas;</p>\n\n<p><strong>&gt;</strong> Fechaduras eletro&iacute;m&atilde;s;</p>\n\n<p><strong>&gt;</strong> Entre outros.</p>\n\n<p>Na certeza de um projeto adequado, instala&ccedil;&otilde;es de alto n&iacute;vel e assist&ecirc;ncia t&eacute;cnica garantida, consulte nosso departamento de vendas.</p>\n', 0, '0.00'),
(10, 1, 10, 1, 'Alarme de Incêndio', 'alarme-de-incendio', 'alarme-de-incendio-florianopolis-capal.png', 'alarme de incêndio, florianópolis, equipamento obrigatório', 'Alarme de incêndio e sistemas de segurança para a tranquilidade geral é com a Cimtel!', 0, 'Equipamentos adequados e de empresa certificada', '<p>Os sistemas de <strong>alarme de inc&ecirc;ndio</strong> e ilumina&ccedil;&atilde;o de emerg&ecirc;ncia, al&eacute;m de obrigat&oacute;rios na maioria dos empreendimentos coletivos, tratam-se ainda de sistemas de seguran&ccedil;a para vida, por isso a escolha de equipamentos adequados e de uma empresa tecnicamente capaz, respons&aacute;vel e principalmente habilitada para perfeita execu&ccedil;&atilde;o dos trabalhos de instala&ccedil;&atilde;o e assist&ecirc;ncia t&eacute;cnica, &eacute; fundamental para o sucesso de qualquer projeto.</p>\n\n<p>Por isso a CIMTEL mant&eacute;m parceria com empresas cuja tecnologia &eacute; desenvolvida por um grupo composto de engenheiros e t&eacute;cnicos com especializa&ccedil;&atilde;o em el&eacute;trica, eletr&ocirc;nica, seguran&ccedil;a, automa&ccedil;&atilde;o e mec&acirc;nica. Este trabalho de desenvolvimento tecnol&oacute;gico garante produtos com caracter&iacute;sticas adequadas e assist&ecirc;ncia ao mercado brasileiro. O principal parceiro da CIMTEL est&aacute; presente no Comit&ecirc; Brasileiro de Seguran&ccedil;a contra Inc&ecirc;ndio, respons&aacute;vel pela cria&ccedil;&atilde;o das normas para o setor.</p>\n\n<p>A CIMTEL tamb&eacute;m oferece, start-up, elabora&ccedil;&atilde;o de laudos, testes, aferi&ccedil;&otilde;es, treinamento e consultoria em toda linha de sistemas de alarme contra inc&ecirc;ndio e luz de emerg&ecirc;ncia.</p>\n', 0, '0.00'),
(11, 1, 11, 1, 'Portas Automáticas', 'portas-automaticas', 'portas-automaticas-florianopolis1.png', 'portas automáticas, florianópolis', 'Pensou em porta automática, pensou em Cimtel!', 0, 'Certificada pelos mais altos padrões de qualidade', '<p>As <strong>portas autom&aacute;ticas</strong> sociais deslizantes s&atilde;o indicadas para aplica&ccedil;&atilde;o em hot&eacute;is, lojas, shopping centers, restaurantes, aeroportos, universidades, supermercados, condom&iacute;nios, hospitais, cl&iacute;nicas... Tanto nas portas de entradas quanto nas portas internas. Al&eacute;m do requinte e do conforto que confere ao ambiente, proporciona o isolamento termo ac&uacute;stico.</p>\n\n<p>O acionamento &eacute; feito por sensores de radar detectores de movimento com n&iacute;vel de sensibilidade e &acirc;ngulo de detec&ccedil;&atilde;o ajust&aacute;veis. Al&eacute;m dos sensores, outras formas de acionamento podem ser utilizadas, com botoeiras, controles de acesso, controle remoto, etc.</p>\n\n<p>Equipadas com bateria de emerg&ecirc;ncia de s&eacute;rie que proporciona funcionamento na falta de energia el&eacute;trica comercial, permitindo at&eacute; 100 ciclos completos de abertura e fechamento, ap&oacute;s este per&iacute;odo n&atilde;o retornando a energia el&eacute;trica, a porta permanecer&aacute; aberta ou fechada conforme programa&ccedil;&atilde;o pr&eacute;via, as portas autom&aacute;ticas CIMTEL garantem seguran&ccedil;a e comodidade.</p>\n\n<p>Permite ainda regular v&aacute;rios par&acirc;metros de funcionamento, atrav&eacute;s de seletor de fun&ccedil;&otilde;es ou computador, como: velocidade de abertura e fechamento, abertura reduzida, for&ccedil;a do motor, tempo de pausa, modo autom&aacute;tico/semi-autom&aacute;tico etc.<br />\nCom um design moderno, montado em chassi de alum&iacute;nio extrudado com apenas 11cm de altura, anodizado ou pintura eletrost&aacute;tica, seus componentes mec&acirc;nicos e eletr&ocirc;nicos proporcionam um funcionamento preciso com grande durabilidade.</p>\n\n<p>Pensou em portas autom&aacute;ticas, pensou CIMTEL, em parceira com as melhores f&aacute;bricas, certificada pelos mais altos padr&otilde;es de qualidade CE.</p>\n', 0, '0.00'),
(12, 1, 9, 1, 'Automação Pivotante', 'automacao-pivotante', 'porta-pivotante-florianopolis.png', 'automação pivotante, florianópolis', 'Automações pivotantes em Florianópolis é com a Cimtel!', 0, 'Produto versátil e aplicável em portas já existentes', '<p>A facilidade e comodidade que faltavam. As <strong>portas pivotantes</strong> unem o que existe de mais moderno, pr&aacute;tico e eficaz da tecnologia de portas autom&aacute;ticas, um produto vers&aacute;til e que pode ser facilmente aplicado em portas j&aacute; existentes, com um ou duas folhas.</p>\n\n<p>Esta s&eacute;rie permite ainda regular v&aacute;rios par&acirc;metros de funcionamento, atrav&eacute;s de seletor de fun&ccedil;&otilde;es, como: velocidade de abertura e fechamento, for&ccedil;a do motor, tempo de pausa, modo autom&aacute;tico/semi-autom&aacute;tico etc.</p>\n', 0, '0.00'),
(13, 1, 8, 1, 'Acessório para Portas Sociais', 'acessorio-para-portas-sociais', 'acessorios-para-porta-social-florianopolis-1.png', 'portas sociais', 'Os acessórios para porta social que seu condomínio, empresa, indústria ou residência precisam está na Cimtel!', 0, 'Melhore a segurança e ganhe em praticidade', '<p><strong>&gt;</strong> Seletor digital de fun&ccedil;&otilde;es com auto-diagn&oacute;stico</p>\n\n<p><strong>&gt;</strong> Seletor simples de fun&ccedil;&otilde;es</p>\n\n<p><strong>&gt;</strong> Detector de movimento tipo radar (interno, externo ou ambos)</p>\n\n<p><strong>&gt;</strong> Sistema de fotoc&eacute;lula de seguran&ccedil;a, microcell.</p>\n\n<p><strong>&gt;</strong> Sistema de acionamento por controle remoto digital.</p>\n\n<p><strong>&gt;</strong>&nbsp;Sistema de acionamento por controle de acessos diversos, como cart&otilde;es, biom&eacute;tricos e outros.</p>\n', 0, '0.00'),
(14, 1, 7, 1, 'Sistema Anti-pânico', 'sistema-anti-panico', 'sistema-anti-panico1.png', 'sistema anti-pânico, florianópolis', 'Sistema anti-pânico e soluções em segurança e automação é com a Cimtel!', 0, 'Segurança para ambientes com grande fluxo de pessoas', '<p>Estas portas possibilitam a <strong>abertura quase total do v&atilde;o de acesso</strong>, bastando uma for&ccedil;a maior sobre as folhas fixas e m&oacute;veis da porta, o que naturalmente acontece em momento de p&acirc;nico, quando&nbsp;as pessoas precisam sair rapidamente do ambiente e de forma conjunta.</p>\n\n<p>Eventuais obst&aacute;culos detectados durante as fases de abertura e fechamento podem ser antecipados por sensores &ldquo;opcionais&rdquo; instalados na porta.</p>\n', 0, '0.00'),
(15, 1, 6, 1, 'Sistema de Cerca Elétrica', 'sistema-de-cerca-eletrica', 'cerca-eletrica-florianopolis-capa.png', 'cerca elétrica, florianópolis', 'Cerca elétrica é mais segurança para seu condomínio, empresa ou residência. Conte com a Cimtel!', 0, 'Sistema efetivo de proteção perimetral ', '<p>A <strong>cerca el&eacute;trica</strong> hoje em dia &eacute; um dos melhores sistemas de prote&ccedil;&atilde;o perimetral dispon&iacute;vel no mercado. Discreto, excelente e com alta efici&ecirc;ncia em fator de inibi&ccedil;&atilde;o de invas&atilde;o, tem um efeito psicol&oacute;gico muito grande, produz uma corrente el&eacute;trica de 8.000 a&nbsp;12.000 volts dependendo da central de cerca el&eacute;trica utilizada, mas por ser de baixa amperagem n&atilde;o queima, n&atilde;o machuca, n&atilde;o deixa marcas e n&atilde;o interfere no sistema nervoso de pessoas ou animais.&nbsp;</p>\n\n<p>Por ser pulsativo, pulsos a&nbsp;cada 1,2 segundo&nbsp;e que duram um mil&eacute;simo de segundo, n&atilde;o h&aacute;&nbsp;riscos de pessoas ou animais ficarem grudados na cerca. Evitando assim processos de les&atilde;o corporal, sendo que seu efeito &eacute; apenas moral/psicol&oacute;gico.&nbsp;</p>\n\n<p>A CIMTEL Tecnologia em Automa&ccedil;&atilde;o trabalha com diversas marcas de central de cerca el&eacute;trica dispon&iacute;veis no mercado e esclarece as diferen&ccedil;as entre elas, sendo que o material de qualidade &eacute; indispens&aacute;vel para evitar problemas posteriores e aumentar a vida &uacute;til do equipamento, que deve ser aplicado conforme cada necessidade. A m&atilde;o de obra qualificada &eacute; de suma import&acirc;ncia para o funcionamento e simetria das hastes e fios. Desta forma oferecemos GARANTIA DE UM ANO E ASSIST&Ecirc;NCIA T&Egrave;CNICA NO LOCAL.</p>\n\n<p>Algumas marcas de central de cerca el&eacute;trica podem ser conjugadas a&nbsp;alarmes sem fio e discadoras de telefone com mensagem de voz, o que possibilita a total seguran&ccedil;a do patrim&ocirc;nio com baix&iacute;ssimo, custo inclusive com monitoramento a&nbsp;dist&acirc;ncia sem pagamento de taxas mensais.</p>\n\n<p>Por isso quando pensar em cerca el&eacute;trica, procure um consultor de neg&oacute;cios da CIMTEL&nbsp;e obtenha a melhor proposta, com os melhores resultados.</p>\n', 0, '0.00'),
(16, 1, 5, 1, 'Sistema de Comunicação', 'sistema-de-comunicacao', 'sistema-de-comunicacao-florianopolis-3.png', 'sistema de comunicação, segurança, florianópolis', 'Sistema de comunicação e soluções em segurança e automação? Procure a Cimtel!', 0, 'Tenha um sistema completo e confiável de comunicação', '<p>O sucesso de um projeto de implanta&ccedil;&atilde;o de um <strong>sistema de comunica&ccedil;&atilde;o</strong> depende diretamente dos objetivos a serem alcan&ccedil;ados, objetivos estes que devem ser minuciosamente tra&ccedil;ados e discutidos antes da efetiva implanta&ccedil;&atilde;o deste tipo de sistema.</p>\n\n<p>Dentre os principais objetivos levantados nos mais diversos projetos que a CIMTEL realiza, est&atilde;o:</p>\n\n<p><strong>&gt;</strong> Possibilitar qualidade, clareza e sigilo nas liga&ccedil;&otilde;es internas do condom&iacute;nio;</p>\n\n<p><strong>&gt;</strong> Comunica&ccedil;&atilde;o direta entre todos os ramais, inclusive os ramais de servi&ccedil;o;</p>\n\n<p><strong>&gt;</strong> Permitir o acesso &agrave;s portas e port&otilde;es atrav&eacute;s de senhas digitadas no porteiro eletr&ocirc;nico;</p>\n\n<p><strong>&gt;</strong> As senhas dever&atilde;o ser individuais (por apartamento), e administradas direto pela central de comunica&ccedil;&atilde;o, uma &uacute;nica programa&ccedil;&atilde;o de senha, indendente do n&uacute;mero de placas;</p>\n\n<p><strong>&gt;</strong> Garantir a durabilidade das placas externas (bot&otilde;es), pelos menos por um ano, independente do n&iacute;vel de utiliza&ccedil;&atilde;o.</p>\n\n<p><strong>&gt;</strong> Possibilitar orienta&ccedil;&otilde;es viva-voz aos usu&aacute;rios do sistema;</p>\n\n<p><strong>&gt;</strong> Utilizar central de comunica&ccedil;&atilde;o que permita programa&ccedil;&atilde;o e monitoramento via software;</p>\n\n<p><strong>&gt;</strong> Utilizar apenas interfones da mesma marca da central de comunica&ccedil;&atilde;o;</p>\n\n<p><strong>&gt;</strong> Utilizar apenas cabos, conectores e acess&oacute;rios homologados pelos &oacute;rg&atilde;os competentes;</p>\n\n<p><strong>&gt;</strong> Acoplar sistema de NO BREAK que garanta o funcionamento de todo sistema por no m&iacute;nimo 2 (duas) horas em caso de falta de energia el&eacute;trica convencional.</p>\n', 0, '0.00'),
(17, 1, 4, 1, 'Porteiro Eletrônico', 'porteiro-eletronico', 'porteiro-eletronico-florianopolis-1.png', 'porteiro eletrônico florianópolis', 'Porteiro eletrônico e outras soluções em segurança e automação na região de Florianópolis? Procure a Cimtel', 0, 'Comunicação segura e com qualidade garantida', '<p>Kit <strong>Porteiro Eletr&ocirc;nico</strong> de sobrepor com teto (prote&ccedil;&atilde;o contra intemp&eacute;ries) e sem teto, contendo um Porteiro Eletr&ocirc;nico F8NT e um interfone modelo AZ01.&nbsp;</p>\n\n<p>Fabricado em alum&iacute;nio (tampa) e pl&aacute;stico ABS (base) permite a instala&ccedil;&atilde;o de at&eacute; 3 extens&otilde;es (um fone que acompanha o Kit mais 2 interfones avulsos modelos AZ.01).&nbsp;</p>\n\n<p>Seu design atual e pequenas dimens&otilde;es combinam com diferentes ambientes de instala&ccedil;&atilde;o. Possui alarme anti-viola&ccedil;&atilde;o para o painel do porteiro eletr&ocirc;nico, ajuste de &aacute;udio externo e aciona fechadura el&eacute;trica HDL.</p>\n', NULL, '0.00'),
(18, 1, 3, 1, 'Vídeo Porteiro ', 'video-porteiro-', 'video-porteiro-florianopolis-semfundo.png', 'video porteiro eletrônico, porteiro eletrônico, florianópolis', 'Video porteiro e soluções em segurança em Florianópolis é com a Cimtel!', 0, 'Mais segurança com imagens de visitantes', '<p>A linha<strong> V&iacute;deo Porteiro</strong> SENSE conta com uma&nbsp;c&acirc;mera, monitor com tela 4&quot;, fone branco, circuito de audio,&nbsp;acionamento de fechadura e geradora de toque de chamada.&nbsp;</p>\n\n<p>Esse sistema possibilita visualizar&nbsp;uma segunda imagem (c&acirc;mera auxiliar) selecionada pelo monitor interno. Al&eacute;m disso, conta com alarme para o painel externo&nbsp;antiviola&ccedil;&atilde;o, leds infravermelho para identifica&ccedil;&atilde;o do visitante no escuro e possibilidade de at&eacute; 4 pontos internos (monitores ou interfones AZ01).</p>\n\n<p>A linha Video Porteiro SENSE conta com&nbsp;aba protetora para o painel externo&nbsp;e se aplica a diversos tipos de ambientes, oferecendo mais conforto e seguran&ccedil;a.</p>\n\n<p>&nbsp;</p>\n', 0, '0.00'),
(19, 1, 2, 1, 'Sistema de Alarme', 'sistema-de-alarme', 'sistema-alarme-contra-roubo-florianopolis-4.png', 'sistema de alarme contra roubo, florianópolis', 'Sistema de alarme contra roubo em Florianópolis? Fale com a Cimtel!', 0, 'Amplie sua segurança com um sistema confiável', '<p>Mesmo quando n&atilde;o est&aacute; por perto, voc&ecirc; pode se proteger contra furtos. Com o <strong>sistema de alarme contra roubo</strong> da CIMTEL, sua propriedade est&aacute; muito mais segura. Isso assegura sua tranq&uuml;ilidade e garante a seguran&ccedil;a das suas posses. Voc&ecirc; poder&aacute; viajar tranq&uuml;ilamente nas f&eacute;rias, nos finais de semana, enfim. Sabendo que sua casa ficar&aacute; do jeito que voc&ecirc; deixou.</p>\n\n<p>A CIMTEL trabalha com os mais diversos equipamentos de monitoramento e detec&ccedil;&atilde;o como:</p>\n\n<p><strong>&gt;</strong> Centrais de alta tecnologia</p>\n\n<p><strong>&gt;</strong> Sensores passivos internos</p>\n\n<p><strong>&gt;</strong> Sensores ativos externos</p>\n\n<p><strong>&gt;</strong> Sensores para aberturas (portas e janelas)</p>\n\n<p><strong>&gt;</strong> Sistemas de acionamento &agrave; dist&acirc;ncia</p>\n\n<p>A hora de proteger sua fam&iacute;lia e seu patrim&ocirc;nio conte com uma empresa s&eacute;ria e comprometida com resultados, projetando um sistema de seguran&ccedil;a adequado perfeitamente as suas necessidades e suas possibilidades de investimento.</p>\n', 0, '0.00'),
(20, 1, 1, 1, 'Iluminação de Emergência', 'iluminacao-de-emergencia', 'iluminacao-de-emergencia-florianopolis-2.png', 'iluminação de emergência florianópolis, sistema de incêndio', 'Mais segurança para você com a iluminação de emergência da Cimtel!', 0, 'Aliada a grandes marcas para garantir mais segurança', '<p>Os sistemas de alarme de inc&ecirc;ndio e <strong>ilumina&ccedil;&atilde;o de emerg&ecirc;ncia</strong>, al&eacute;m de obrigat&oacute;rios na maioria dos empreendimentos coletivos, tratam-se ainda de sistemas de seguran&ccedil;a para vida, por isso a escolha de equipamentos adequados e de uma empresa tecnicamente capaz, respons&aacute;vel e principalmente habilitada para perfeita execu&ccedil;&atilde;o dos trabalhos de instala&ccedil;&atilde;o e assist&ecirc;ncia t&eacute;cnica, &eacute; fundamental para o sucesso de qualquer projeto.</p>\n\n<p>Por isso a CIMTEL mant&eacute;m parceria com empresas cuja tecnologia &eacute; desenvolvida por um grupo composto de engenheiros e t&eacute;cnicos com especializa&ccedil;&atilde;o em el&eacute;trica, eletr&ocirc;nica, seguran&ccedil;a, automa&ccedil;&atilde;o e mec&acirc;nica.&nbsp;</p>\n\n<p>Este trabalho de desenvolvimento tecnol&oacute;gico garante produtos com caracter&iacute;sticas adequadas e assist&ecirc;ncia ao mercado brasileiro. O principal parceiro da CIMTEL est&aacute; presente no Comit&ecirc; Brasileiro de Seguran&ccedil;a contra Inc&ecirc;ndio, respons&aacute;vel pela cria&ccedil;&atilde;o das normas para o setor.</p>\n\n<p>A CIMTEL tamb&eacute;m oferece, start-up, elabora&ccedil;&atilde;o de laudos, testes, aferi&ccedil;&otilde;es, treinamento e consultoria em toda linha de sistemas de alarme contra inc&ecirc;ndio e luz de emerg&ecirc;ncia.</p>\n', 0, '0.00'),
(21, 1, 22, 1, 'Cancelas Automáticas', 'cancelas-automaticas', 'cancelas-em-florianopolis-1.png', 'cancelas em florianópolis', 'Entradas de condomínios, estacionamentos, estabelecimentos comerciais? Cancelas automáticas em Florianópolis é com a Cimtel! Veja', 0, 'Equipamento versátil para diversos usos', '<p>Se voc&ecirc; procura as melhores <strong>cancelas autom&aacute;ticas em Florian&oacute;polis</strong> chegou ao lugar certo! A Cimtel oferece a solu&ccedil;&atilde;o ideal para quem precisa de um controle efetivo de entradas e sa&iacute;das de estacionamentos, condom&iacute;nios, pr&eacute;dios comerciais, ind&uacute;strias e todas as &aacute;reas com grandes fluxos de ve&iacute;culos.</p>\n\n<p>Resist&ecirc;ncia e a garantia de qualidade Cimtel, associadas a m&atilde;o de obra altamente qualificada - da venda &agrave; manuten&ccedil;&atilde;o -, fazem desta a melhor op&ccedil;&atilde;o quando se fala em cancelas autom&aacute;ticas. Solicite abaixo um or&ccedil;amento e saiba mais detalhes e vantagens do equipamento.</p>\n', 0, '0.00'),
(22, 1, 13, 1, 'Fechadura Eletromagnética', 'fechadura-eletromagnetica', 'fechadura-eletromagnetica-em-florianopolis.png', 'fechadura eletromagnética', 'Fechadura eletromagnética / trava eletroímã para controle de acesso em Florianópolis é com a Cimtel. Confira! ', 0, 'Controle de acessos efetivo e prático', '<p>Extremamente segura e pr&aacute;tica, a <strong>fechadura eletromagn&eacute;tica</strong>, tamb&eacute;m conhecida como fechadura eletro&iacute;m&atilde;, &eacute; uma &oacute;tima op&ccedil;&atilde;o para o controle de acesso em lojas, condom&iacute;nios, empresas, ind&uacute;strias e resid&ecirc;ncias.</p>\n\n<p>O princ&iacute;pio &eacute; simples e muito eficiente. Uma placa de &iacute;m&atilde; e uma placa met&aacute;lica que se unem em uma trava eletro&iacute;m&atilde;. Para ficar fechada ela faz uso de um cirdu&iacute;to cont&iacute;nuo de alimenta&ccedil;&atilde;o de energia. Quando o c&oacute;digo &eacute; digitado ou o bot&atilde;o de abertura apertado, a corrente &eacute; cortada por alguns segundos - por temporizador -, liberando o acesso e voltando &agrave; atividade assim que as placas se unem novamente.</p>\n\n<p>Solicite um or&ccedil;amento abaixo, tire d&uacute;vidas e veja mais vantagens. <strong>Fechadura eletromagn&eacute;tica em Florian&oacute;polis</strong> &eacute; com a Cimtel!</p>\n', 0, '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_categoria_das_noticias`
--

CREATE TABLE `gercont_categoria_das_noticias` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_categoria_das_noticias`
--

INSERT INTO `gercont_categoria_das_noticias` (`id`, `ativo`, `ordenar`, `id_usuario`, `nome`, `url_nome`) VALUES
(1, 1, 0, 1, 'Assistência 24 Horas', 'assistencia-24-horas'),
(2, 1, 0, 1, 'Automação', 'automacao'),
(3, 1, 0, 1, 'Câmeras de Segurança', 'cameras-de-seguranca'),
(4, 1, 0, 1, 'CFTV', 'cftv'),
(5, 1, 0, 1, 'Segurança Condominial', 'seguranca-condominial'),
(6, 1, 0, 1, 'Diversos', 'diversos'),
(7, 1, 0, 1, 'Promoções', 'promocoes'),
(8, 1, 0, 1, 'Cerca Elétrica', 'cerca-eletrica'),
(9, 1, 0, 1, 'Segurança Residencial', 'seguranca-residencial'),
(10, 1, 0, 1, 'Controle de Acesso', 'controle-de-acesso'),
(11, 1, 0, 1, 'Porta Automática', 'porta-automatica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_clientes`
--

CREATE TABLE `gercont_clientes` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `capa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_clientes`
--

INSERT INTO `gercont_clientes` (`id`, `ativo`, `ordenar`, `id_usuario`, `nome`, `link`, `capa`) VALUES
(1, 1, 12, 1, 'Alesc', 'javascript:void(0)', 'assembleia-legislativa.png'),
(2, 1, 11, 1, 'Builder', 'javascript:void(0)', 'builder1.png'),
(3, 1, 10, 1, 'Grupo Casvig', 'javascript:void(0)', 'casvig1.png'),
(4, 1, 9, 1, 'CIASC', 'javascript:void(0)', 'ciasc1.png'),
(5, 1, 8, 1, 'Colégio Catarinense', 'javascript:void(0)', 'Colegio-catarinense.png'),
(6, 1, 7, 1, 'Cond. Solar da Colina', 'javascript:void(0)', 'Cond.-Solar-da-Colina_.png'),
(7, 1, 13, 1, 'Lumis', 'javascript:void(0)', 'lumis-logo1.png'),
(8, 1, 6, 1, 'Cond. Argus', 'javascript:void(0)', 'ARGUS.png'),
(9, 1, 5, 1, 'Infraero', 'javascript:void(0)', 'Infraero.png'),
(10, 1, 4, 1, 'Costão do Santinho', 'javascript:void(0)', 'Costao-do-Santinho1.png'),
(11, 1, 3, 1, 'Cota', 'javascript:void(0)', 'Cota1.png'),
(12, 1, 2, 1, 'Eletrobras', 'javascript:void(0)', 'Eletrosul.png'),
(13, 1, 1, 1, 'Justiça Federal SC', 'javascript:void(0)', 'Justiça-Federal1.png'),
(14, 1, 14, 1, 'Aemflo', '', 'aemflo.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_contatos`
--

CREATE TABLE `gercont_codemin_contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `mensagem` text NOT NULL,
  `data_hora` datetime NOT NULL,
  `visualizado` tinyint(1) NOT NULL,
  `interessado` varchar(255) NOT NULL,
  `anexo` varchar(500) NOT NULL,
  `nomeProduto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_contatos`
--

INSERT INTO `gercont_codemin_contatos` (`id`, `nome`, `email`, `telefone`, `mensagem`, `data_hora`, `visualizado`, `interessado`, `anexo`, `nomeProduto`) VALUES
(68, 'Tatiana Cristina Narcizio', 'taty.cristina@hotmail.com', '(48) 8424-9327', 'Boa Tarde,\n\nMe chamo Tatiana,encaminho meu curriculum, com o objetivo de ingressar na Cimtel.\n\nDesde já agradeço,\n\nTatiana Cristina Narcizio', '2016-07-14 13:14:00', 1, '0', '', ''),
(69, 'Teste', 'teste@teste.com', '(48) 9937-71665', 'TEste', '2016-07-14 13:18:56', 1, '0', '2016071413185689.pdf', ''),
(70, 'Júlia Ilze de Farias', 'juliailze825@gmail.com', '(48) 9151-1172', 'Estarei me mudando em breve para Florianópolis(SC).', '2016-07-14 21:52:21', 0, '0', '2016071421522144.pdf', ''),
(71, 'Júlia Ilze de Farias', 'juliailze825@gmail.com', '(48) 9151-1172', 'Estarei me mudando em breve para Florianópolis.', '2016-07-14 21:53:33', 0, '0', '2016071421533335.pdf', ''),
(72, 'Júlia Ilze de Farias', 'juliailze825@gmail.com', '(48) 9151-1172', 'Estarei me mudando em breve para Florianópolis.', '2016-07-14 21:54:47', 0, '0', '2016071421544724.pdf', ''),
(73, 'Mateus Ziegler', 'mateusziegler@hotmail.com', '(55) 9139-8527', 'Boa tarde!\nEstou em contato com sua empresa através do site buscando uma oportunidade para realização do meu estagio curricular a partir de agosto deste ano, considero o mercado da automação uma ótima área pra ingressar no mercado de trabalho\nEm anexo estou enviando meu Currículo Vitae, desde já agradeço a atenção.\n\nAtt. Mateus Ziegler', '2016-07-20 14:56:54', 0, '0', '2016072014565483.pdf', ''),
(74, 'Marcos Vinicius Dutra', 'marcosv86@hotmail.com', '48 964646222', 'Meu nome é Marcos Vinicius Dutra, resido no centro, moro com minha mãe, sou recém formado do curso superior de tecnologia em sistemas eletrônicos do instituto federal de santa catarina. Possuo experiências na área de TI, eletrônica, projetos e até vendas. Sou uma pessoa taxada como ágil e persistente. Meu objetivo é ampliar e colocar em prática conhecimentos adquiridos na faculdade, admitindo a aprendizagem na área de tecnologia de sistemas eletrônicos e afins.	', '2016-07-27 01:35:19', 0, '0', '2016072701351987.pdf', ''),
(75, 'Rivo Ternes', 'rivo.ternes@gmail.com', '(48) 8823-0554', 'Tenho uma porta de garagem feita pela CIMTEL que travou na posição aberta, já tirei a trava e desliguei a energia mesmo assim ela não fecha, necessito de assistência com urgência visto que estou com a casa aberta', '2016-08-01 13:24:23', 0, 'Cliente Residencial', '', '0'),
(76, 'Gabriel Chagas da Silva', 'gabriel@webi.com.br', '(48) 9922-2998', 'sadasd sadassa', '2016-08-03 11:42:44', 0, 'Cliente Residencial', '', ''),
(77, 'Facbricação de Compoenentes', 'gabriel@webi.com.br', '', 'sfdfs', '2016-08-03 11:45:36', 0, '0', '2016080311453655.png', ''),
(78, 'FacbricaÃ§Ã£o de Compoenentes', 'gabriel@webi.com.br', '', 'sfdfs', '2016-08-03 11:48:27', 0, '0', '2016080311482785.png', ''),
(79, 'Gabriel Chagas da Silva', 'gabriel@webi.com.br', '(48) 9922-2998', 'sdfd dsfs', '2016-08-03 11:49:43', 0, '0', '2016080311494364.ico', ''),
(80, 'Aulas de Violão', 'gabriel_chagas@live.com', '(54) 6546-54654', 'sdsa sadasas', '2016-08-03 11:52:14', 0, '0', '2016080311521430.ico', ''),
(81, 'Aulas de ViolÃ£o', 'gabriel_chagas@live.com', '(54) 6546-54654', 'sdsa sadasas', '2016-08-03 11:53:23', 0, '0', '2016080311532330.ico', ''),
(82, 'Gabriel Antonio', 'gabriel_chagas@live.com', '(48) 9922-2998', 'asdfasd sadasdsa', '2016-08-03 11:57:25', 0, '0', '2016080311572524.png', ''),
(83, 'Gabriel Chagas da Silva', 'gabriel@webi.com.br', '(48) 999999999', 'sadsad sadsadsa', '2016-08-03 12:15:18', 0, 'Indústria', '', 'Portão Deslizante'),
(84, 'Leandro Yoshio Morita', 'leandromorita@hotmail.com', '(48) 9847-6517', 'Olá, venho por meio desta mensagem demonstrar meu interesse em trabalhar na área de Automação. Sou formado em Engenharia de Automação e possuo pós-graduação na área de Automação e Sistemas. Estou enviando em anexo meu currículo para que possam analisar caso tenham interesse.\n\nDesde já agradeço.\nSds, Leandro. ', '2016-08-04 15:17:36', 0, '0', '2016080415173645.pdf', '0'),
(85, 'Leandro Yoshio Morita', 'leandromorita@hotmail.com', '(48) 9847-6517', 'Olá, venho por meio desta mensagem demonstrar meu interesse em trabalhar na área de Automação. Sou formado em Engenharia de Automação e possuo pós-graduação na área de Automação e Sistemas. Estou enviando em anexo meu currículo para que possam analisar caso tenham interesse.\n\nDesde já agradeço.\nSds, Leandro. ', '2016-08-04 15:20:26', 0, '0', '2016080415202683.pdf', '0'),
(86, 'Matheus da Silva Amaral Vieira', 'matheussavieira@hotmail.com', '(48) 9177-8776', 'Envio em anexo meu currículo para a vaga de estágio ou Serviço de meio período.\nCaso que tenha vaga me coloco à disposição para uma entrevista.\nObrigado!\nMatheus da Silva Amaral Vieira', '2016-08-11 17:31:03', 0, '0', '2016081117310354.pdf', '0'),
(87, 'Matheus  da Silva Amaral Vieira', 'matheussavieira@hotmail.com', '(48) 9177-8776', 'Envio em anexo meu currículo para a vaga de Estágio ou Serviço de meio período.\nTenho interesse em obter experiencia na área de mecatrônica ou automação.\nCaso que tenha vaga me coloco à disposição para uma entrevista.\nObrigado!\nMatheus da Silva Amaral Vieira', '2016-08-11 17:37:56', 0, '0', '2016081117375630.pdf', '0'),
(88, 'Matheus da Silva Amaral Vieira', 'matheussavieira@hotmail.com', '(48) 9177-8776', 'Envio em anexo meu currículo para a vaga de Estágio ou Serviço de meio período.\nTenho interesse em obter experiencia na área de mecatrônica ou automação.\nCaso que tenha vaga me coloco à disposição para uma entrevista.\nObrigado!', '2016-08-11 17:47:38', 0, '0', '2016081117473824.pdf', '0'),
(89, 'Matheus da Silva Amaral Vieira', 'matheussavieira@hotmail.com', '(48) 9177-8776', 'Envio em anexo meu currículo para a vaga de Estágio ou Serviço de meio período.\nTenho interesse em obter experiencia na área de mecatrônica ou automação.\nCaso que tenha vaga me coloco à disposição para uma entrevista.\nObrigado!', '2016-08-11 19:53:47', 0, '0', '2016081119534739.pdf', '0'),
(90, 'Matheus da Silva Amaral Vieira', 'matheussavieira@hotmail.com', '(48) 9177-8776', 'Envio em anexo meu currículo para a vaga de Estágio ou Serviço de meio período.\nTenho interesse em obter experiência na área de mecatrônica ou automação.\nCaso que tenha vaga me coloco à disposição para uma entrevista.\nObrigado!', '2016-08-12 15:11:26', 0, '0', '2016081215112670.pdf', '0'),
(91, 'tiago', 'tiagoetur2008@hotmail.com', '(48) 9644-9926', 'Boa noite gostaria de participar do quadro de funcionários da CIMPEL AUTOMAÇÃO. ', '2016-08-16 21:16:55', 0, '0', '2016081621165547.docx', '0'),
(92, 'tiago', 'tiagoetur2008@hotmail.com', '(48) 9644-9926', 'Boa noite...\nGostaria de fazer parte da equipe da Cimtel automação.', '2016-08-16 21:47:50', 1, '0', '2016081621475018.docx', '0'),
(93, 'Alexandre', 'alexandrefontanella@yahoo.com.br', '(48) 9165-7896', 'Olá,\nsolicito orçamento para instalação dos seguintes equipamentos:\n02 CONTROLES  DE ACESSO INTELBRÁS AS 200\n01 KIT  FECHADURA MAGNÉTICA UNIVERSAL 150 KG CINZA \n01 FONTE TEMPORIZADA \n01 BOTÃO DE ABERTURA \n01 BATERIA SELADA 12/7ª\n01 TAG\nMÃO DE OBRA\n', '2016-08-18 00:34:47', 1, 'Condomínio', '', '0'),
(94, 'Rodrigo da Silva', 'rodrigo@classesobmedida.com.br', '(48) 9166-8121', 'Boa tarde,\n\nPossuo uma porta de correr de 2 folhas, daquelas que abrem uma para cada lado. É possível instalar fechadura magnética nelas?', '2016-08-18 13:59:05', 0, 'Empresa', '', '0'),
(95, 'Marcelo', 'marceloborges.tec@gmail.com', '(47) 8856-0507', 'Olá segue anexo área técnica.\nObrigado. ', '2016-08-26 20:44:18', 0, '0', '2016082620441888.docx', '0'),
(96, 'Ricardo Nalon', 'r.nalon@hotmail.com', '(48) 9992-7846', 'Ao RH', '2016-09-01 20:52:56', 0, '0', '2016090120525637.doc', '0'),
(97, 'Ricardo Nalon', 'r.nalon@hotmail.com', '(48) 9992-7846', 'Ao RH', '2016-09-02 13:35:48', 1, '0', '2016090213354831.doc', '0'),
(171, 'Julio Cesar Ramos Magaldi', 'juliocmagaldi@yahoo.com.br', '(48) 9624-0749', 'boa tarde, encaminho curriculum a esta empresa que valoriza as pessoas. Para futuras oportunidades.', '2016-09-05 12:54:45', 1, '0', '2016090512544595.doc', '0'),
(172, 'Julio Cesar Ramos Magladi', 'juliocmagaldi@yahoo.com.br', '(48) 9624-0749', 'Boa tardee, encaminho curriculun para participar em processos seletivos nesta empresa que valoriza as pessoas.', '2016-09-05 13:09:00', 1, '0', '2016090513090025.doc', '0'),
(173, 'João Paulo Tortato', 'joao_tortato@hotmail.com', '(48) 8833-6038', 'Boa tarde, segue em anexo currículo\n\n\nGrato desde já', '2016-09-19 15:19:54', 1, '0', '2016091915195443.pdf', '0'),
(174, '0', '0', '0', '0', '2016-09-20 21:43:28', 1, '0', '', '0'),
(175, '0', '0', '0', '0', '2016-09-20 21:44:05', 0, '0', '', '0'),
(176, '0', '0', '0', '0', '2016-09-20 21:47:55', 1, '0', '', '0'),
(177, '0', '0', '0', '0', '2016-09-20 21:48:39', 1, '0', '', '0'),
(178, '0', '0', '0', '0', '2016-09-20 21:49:09', 1, '0', '', '0'),
(179, '0', '0', '0', '0', '2016-09-20 21:54:37', 1, '0', '', '0'),
(180, 'Gustavoteste', 'gustavo@webi.com.br', '(48) 9843-7069', 'teste', '2016-09-21 08:25:14', 1, 'Condomínio', '', '0'),
(181, 'cfgngnf', 'gustavo@webi.com.br', '(55) 5555-55555', 'teste', '2016-09-21 08:26:33', 1, 'Condomínio', '', '0'),
(182, 'DD', 'emailteste@gmail.com', '(54) 1651-65156', 'TT', '2016-09-21 08:26:51', 1, 'Cliente Residencial', '', '0'),
(183, 'TEste', 'jrkzuya@gmail.com', '(48) 9958-7488', 'DWQDqw', '2016-09-21 08:41:44', 1, 'Condomínio', '', '0'),
(184, 'Teste Nome Contato', 'teste@contato.com', '(96) 4184-89498', 'TEste Mensagem!', '2016-09-21 08:43:24', 1, 'Empresa', '', '0'),
(185, 'Teste Nome', 'teste@trabalhe.com', '(98) 7498-74984', 'Teste Mensagem Trabalhe', '2016-09-21 08:44:32', 1, '0', '2016092108443249.pdf', '0'),
(186, 'Teste Nome', 'teste@produto.com', '(48) 9498-49849', 'TEste Mensagem!', '2016-09-21 08:45:55', 1, 'Cliente Residencial', '', 'Projeto de sistema CFTV'),
(187, 'GABRIEL', 'gabriel@webi.com.br', '(48) 9922-2998', 'sasada', '2016-09-23 13:24:42', 1, 'Cliente Residencial', '', '0'),
(188, 'GABRIEL', 'gabriel_chagas@live.com', '(48) 9922-2998', 'sadsadas', '2016-09-23 13:37:54', 1, 'Indústria', '', '0'),
(189, 'João Paulo Tortato', 'joao_tortato@hotmail.com', '(48) 8833-6038', 'Coloco-me a disposição', '2016-09-26 14:29:42', 1, '0', '2016092614294238.pdf', '0'),
(190, 'Residencial Ilha Azul', 'residencialilhaazul@gmail.com', '(48) 9901-6178', 'Sou síndica e estamos analisando os benefícios para controle de acesso. Já possuímos 27 câmeras, houve alguns fatos que se tivéssemos o controle de acesso, ajudaria a ir nos registros primeiramente e depois analisar as imagens. Neste caso, um complementaria o outro.', '2016-09-29 14:00:46', 1, 'Condomínio', '', 'Controle de Acesso'),
(191, 'Irineu', 'irineu.t@gmail.com', '(48) 9932-9679', 'Solicito a presença de um profissional de manutenção para verificar falha no funcionamento da sinaleira de advertência de abertura do portão de acesso à garagem do subsolo:\n\nCondomínio Gracia Maria / Florianópolis', '2016-10-10 14:16:13', 1, 'Condomínio', '', '0'),
(192, 'Thiago Lopes Moreira', 'thiagofrosty@hotmail.com', '(41) 9677-1466', 'Engenheiro Eletrônico formado na UTFPR. Experiência em eletrônica digital e analógica, projeto e construção de amplificadores eletrônicos, filtros elétricos e fontes chaveadas, soldagem de componentes SMD, montagem de circuitos impressos, desenvolvimento de sistemas embarcados e projetos de instalações elétricas prediais. Desenvolvimento de Firmware/Software em Assembly, C, C++ e C#. Conhecimento em Linux embarcado e microcontroladores das famílias 8051, PIC, MSP430 e ARM. Conhecimento básico de Lógica Programável e linguagem VHDL. Experiência em programação de CLP’s. Conhecimento em metodologia de desenvolvimento de software Scrum e versionamento git. Experiência e facilidade em lidar com pessoas. Dois anos de experiência internacional nos Estados Unidos. Voluntário do programa “Mãos que Ajudam” que presta ajuda humanitária e serviço comunitário. Cristão, surfista e baterista de uma banda de rock.', '2016-10-13 16:45:02', 1, '0', '2016101316450238.pdf', '0'),
(193, 'Aliny Pereira Andrade', 'alinyfloripa1@hotmail.com', '(48) 9925-9797', 'Profissional em constante atualização, com facilidade no aprendizado de novas técnicas de trabalho e tecnologias disponíveis. Comprometimento com a empresa e desenvolvimento de tarefas com dinamismo e criatividade são características relevantes. Proativo, resiliente com capacidade de tomar decisões e resolver problemas com pensamentos estratégicos e liderança. Experiência de trabalho em equipe e com bom relacionamento interpessoal.', '2016-10-14 11:46:32', 1, '0', '2016101411463247.docx', '0'),
(194, 'Carlos Tadeu', 'cegpinturas@hotmail.com', '(48) 8413-9468', 'Somos uma empresa do ramo de construção civil, com experiência em restauração PREDIAL. Temos técnicos e mão de obra especializada e comprometida com o serviço. A nossa empresa está preparada para atender clientes de pequeno ,médio e grande porte, oferecendo sempre uma solução inteligente e econômica para quem precisa reformar ou construir.\nPodemos contribuir de forma positiva para sua obra, com serviços realizados de acordo com as normas de qualidade que prezamos dentro da nossa organização, incluindo garantia de 5 anos em todos os serviços prestados.\nBuscamos estabelecer uma relação transparente com os nosso clientes, oferecendo suporte através do atendimento diferenciado, usamos somente produtos de primeira linha em nossos serviços e temos parcerias com os principais fornecedores de tintas e e materiais para restauração.\nEstamos à disposição para esclarecer eventuais dúvidas e aguardamos o seu contato!\nAtenciosamente,\nCarlos Tadeu (48)8413-9468 / 9968-1936\n', '2016-10-20 18:04:51', 1, 'Empresa', '', '0'),
(195, 'Jorge Linero', 'jorge.linero.r@gmail.com', '(48) 9158-5427', 'Prezados Senhores,\n\nEstou à procura de novos desafios profissionais na área de segurança e TI e acredito que sua empresa possa ter interesse por minhas qualificações.\n\nSou graduado em Engenharia de Sistemas, tenho mais 5 anos experiência en sistemas cctv, cercas eletrificadas, instalação e manutenção do motores automatizadores para portões residenciai, redes de computadores e produtos relacionados. Dentre minhas características profissionais destacam-se o perfeccionismo, dedicação, facilidade de interação com o grupo e responsabilidade.\n\nMeus melhores cumprimentos\nEng. Jorge Linero', '2016-10-22 12:20:46', 1, '0', '2016102212204657.pdf', '0'),
(196, 'Filipe da Silva', 'filipe.ufsc@gmail.com', '(48) 9625-8807', 'Sou formado em engenharia de controle e automação pela universidade federal de Santa Catarina (UFSC), realizei o estagio de conclusão de curso na parte de automação de maquinário agrícola na MF Máquinas em FRAIBURGO-SC, tendo com responsabilidade a documentação e o desenvolvimento de um sistema que integrava a parte física com a logica através de um software.\nDurante a graduação participei do projeto de desenvolvimento de um protótipo automobilístico de alta eficiência energética a e3, onde pode ocupar funções na parte operacional auxiliando na construção do carro e gerencial sendo líder da área de eletrônica onde foi permitido o desenvolvimento de projetos voltados para a parte de instrumentação e de programação e capitão da equipe que me atribuiu responsabilidades de coordenar todas as áreas.\n\nEnquanto cursava o técnico, frequentei vários eventos voltados para os softwares livres. ', '2016-10-25 17:13:15', 1, '0', '2016102517131584.pdf', '0'),
(197, 'marcelo', 'celoboeira@gmail.com', '(48) 9810-6221', 'Orçamento para instalação de 01 dvr 8 ahd e 08 cameras em canasvieiras.', '2016-10-31 09:56:59', 1, 'Cliente Residencial', '', '0'),
(198, 'kaio henrique', 'kaiocoelho2706@gmail.com', '(48) 9234-3864', 'segue em anexo curriculum. Grato.', '2016-11-03 10:24:08', 1, '0', '2016110310240894.pdf', '0'),
(199, 'Luiza Miranda Guterres', 'lmguterres.cic@gmail.com', '(73) 9911-62861', 'Boa tarde,\n\nSou recém formada no curso de Ciência da Computação e procuro oportunidade para trabalhar com desenvolvimento de softwares. Tenho experiência com sistemas embarcados e com desenvolvimento de sistemas web em ASP.NET MVC. No currículo em anexo podem ser encontradas mais informações das linguagens de programação que já tenho algum contato. Tenho disponibilidade para mudança imediata.', '2016-11-03 16:48:01', 1, '0', '2016110316480132.pdf', '0'),
(200, 'LEONARDO ANTONIO ESPINDOLA', 'LEO.ABOMAI@GMAIL.COM', '(48) 9619-6672', 'Boa Tarde busco oportunidade para área de operador de monitoramento, possuo experiência e facilidade de desempenhar a função, por 2 anos trabalhei na Policia Militar de Santa Catarina Como agente administrativo, e la desempenhava esta função, recebemos treinamento, e cursos de aperfeiçoamento, agradeço atenção, caso haja interesse por parte da empresa estou à disposição para uma entrevista.', '2016-11-08 13:39:08', 1, '0', '2016110813390858.doc', '0'),
(201, 'Walter Barcelos', 'wjbarcelos@gmail.com', '(48) 9996-29600', 'Gostaria de saber como funciona o monitoramento residencial.', '2016-11-16 10:08:06', 1, 'Cliente Residencial', '', '0'),
(202, 'nelio', 'nobraga@hotmail.com', '(48) 9154-6232', 'enviar representante para avaliar recursos necessarios a instalação e orçamento', '2016-11-24 19:36:59', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(203, 'GISELE DA SILVA ALVES', 'gisellialvs@yahoo.com.br', '(48) 9945-9706', 'Gostaria de orçamento de cerca elétrica residencial.\n\nAguardo retorno ', '2016-11-28 10:00:47', 1, 'Cliente Residencial', '', 'Sistema de Cerca Elétrica'),
(204, 'Davi Mendonça do Vale Pereira', 'davivp@yahoo.com.br', '(48) 9915-4344', 'Boa tarde, gostaria de obter orçamento para instalação de câmeras de monitoramento para um loteamento.', '2016-11-28 16:27:32', 1, 'Condomínio', '', '0'),
(205, 'Bruno', 'brunomartins16@gmail.com', '(48) 9841-31109', 'tenho interesse em um portão de aço galvanizado todo fechado, com uma porta. Medida em torno de 3mx2,5\npara instalação no pântano do sul.', '2016-11-30 13:31:20', 1, 'Cliente Residencial', '', 'Portão Basculante'),
(206, 'walter', 'walnog77@gmail.com', '(48) 9997-55850', 'Bom dia, \nGostaria de um contato / elaboração de um orçamento de alarme sonoro e de presença p/ o espaço de uma Igreja evangélica.\nGostaria que o contato fosse telefônico.', '2016-12-08 10:47:16', 1, 'Outros', '', '0'),
(207, 'IVO HANS WESTPHAL', 'financeiro@mansaoluchi.com.br', '(48) 9191-2322', 'Bom dia, possuimos em nossa empresa um CFTV de 16 canais analogico, queremos fazer a substituição por um fullhd dvr 16 canais, cabeamento e 10 cameras novas. Gostariamos de saber um valor para esses produtos e instalação dos mesmos.\n\nObritgado.Bom dia, possuimos em nossa empresa um CFTV de 16 canais analogico, queremos fazer a substituição por um fullhd dvr 16 canais, cabeamento e 10 cameras novas. Gostariamos de saber um valor para esses produtos e instalação dos mesmos.\n\nObritgado.', '2016-12-08 11:18:36', 1, 'Empresa', '', '0'),
(208, 'Bruna Nunes', 'nbruuna@hotmail.com', '(48) 9850-45113', 'Preciso de dois motores de portão para duas casas com portão de vidro.', '2016-12-08 11:26:29', 1, 'Empresa', '', 'Portão Deslizante'),
(209, 'layla hermann amarantes', 'layla_am@hotmail.com', '', 'Bom dia, tenho interesse em um orçamento de portão deslizante para residencia.\ngostaria de um orçamento, junto com a instalação e tempo de garantia.\n\nObrigada', '2016-12-12 07:55:35', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(210, 'HELIO CERVELIN', 'heliocervelin@gmail.com', '(48) 9935-6589', 'Necessito revisar alarme PARADOX que dispara e também gravar número de telefone para alerta.', '2016-12-12 15:22:28', 1, 'Cliente Residencial', '', '0'),
(211, 'sergio alves', 'sergioalbr@yahoo.com.br', '(48) 9993-57836', 'por favor necessito de um orçamento deste  material. abc. Sérgio\nQtde	Descrição\n01	Gravador Digital de Vídeo (DVR) de 04 canais – Marca Intelbrás – Tecnologia HD\n01	HD de 1,0 Tera\n04	Câmeras Ballet  color Day&Night com IR 30 M  lente 3,6mm – Marca Intelbrás Tecnologia HD\n04	Fonte de Alimentação 1,0  A \n100 M 	Cabo Categoria 5E\n50 M	Cabo Paralelo\n04	Ballon\n04	Plug P4\n04	Caixa 4x2 com Tampa Cega\n	Mão de Obra \n', '2016-12-14 11:41:44', 1, 'Cliente Residencial', '', '0'),
(212, 'FRANCISCO EDUARDO HENRIQUE DOS SANTOS', 'drd265@gmail.com', '(48) 3286-4376', 'Busco nova oportunidade de trabalho e recolocação no mercado', '2016-12-14 15:53:44', 1, '0', '2016121415534468.doc', '0'),
(213, 'ALEX SANDRO PEREIRA', 'tecnologoalexpereira@gmail.com', '(48) 9885-60906', 'Boa tarde, \n\n\n          Segue em anexo o meu currículo.\natt', '2016-12-14 16:14:18', 1, '0', '2016121416141887.pdf', '0'),
(214, 'Magda Ferreira Santos', 'mgdfsantos@gmail.com', '(48) 9820-0151', 'Tenho um portão de madeira de abrir de 310 de vão e gostaria de automatiza-lo . tenho quem  faça a união das duas partes  mas preciso saber o preço do motor, cremalheira etc. Fico noa aguardo, Grata', '2016-12-18 12:11:46', 1, 'Cliente Residencial', '', '0'),
(215, 'Messias Calixto', 'messiascalixto@yahoo.com.br', '(48) 9964-41330', 'Boa Tarde,\n\nVenho através deste me candidatar a vaga de Porteiro nesta conceituada empresa.\nTenho experiência, e me ponho a disposição para início imediato.\nDesde já agradeço a sua atenção.\n\nCordialmente\n\nMessias Calixto ', '2017-01-03 14:26:32', 1, '0', '2017010314263213.docx', '0'),
(216, 'Kaká', 'kaka@webi.com.br', '(48) 3241-3241', 'Apenas testando a usabilidade do formulário de contato', '2017-01-03 16:25:28', 1, 'Outros', '', '0'),
(217, 'Teste', 'teste@teste.com.br', '(21) 9873-62187', 'Teste', '2017-01-06 17:18:28', 1, 'Indústria', '', '0'),
(218, 'Gustavo', 'gustavo@webi.com.br', '(48) 9843-7069', 'testeteste', '2017-01-06 17:22:49', 1, 'Outros', '', '0'),
(219, 'Vitor Machado de Sousa', 'sousa.vitormachado@gmail.com', '(49) 9913-25909', 'Sou formado em eletrotécnica, possuo curso de elétrica de automação, tenho habilidades em liderar equipes , foco em resultados e pro atividade', '2017-01-08 01:20:48', 1, '0', '2017010801204863.doc', '0'),
(220, 'José', 'drcasper@hotmail.com', '(48) 9998-50330', 'Projeto residencial cftv', '2017-01-17 12:55:44', 1, 'Cliente Residencial', '', 'Projeto de sistema CFTV'),
(221, 'ESTEVAN', 'estevanpmunoz@gmail.com', '(48) 9630-9888', 'Boa Tarde, \ngostaria de solicitar orçamento para automatizar o meu portão. \nAt.\nEstevan', '2017-01-17 17:46:25', 1, 'Cliente Residencial', '', '0'),
(222, 'Ferreira', 'joseluizferreira8@gmail.com', '(48) 9972-6828', 'solicito oorçamento para instalação de sitema de vídeos e cameras  internas e externas em casa de repouso para idosos.', '2017-01-18 15:47:15', 1, 'Cliente Residencial', '', 'Projeto de sistema CFTV'),
(223, 'Cândido', 'candaumdg@hotmail.com', '', 'Boa tarde.\n\n Gostaria de um orçamento para portão deslizante de aproximadamente 2,5metros, por gentileza.\n\nAgradecido.', '2017-01-18 16:45:19', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(224, 'Sônia Provin', 'sindica2017treviso@gmail.com', '(48) 9963-5957', 'Gostaria de um orçamento.\nRua desembargador Pedro Silva. 2800 Coqueiros  Condominio Residencial Treviso.', '2017-01-18 20:55:22', 1, 'Condomínio', '', 'Iluminação de Emergência'),
(225, 'Lorival Heck', 'lorivalheck.sc@gmail.com', '(48) 9993-11688', 'Voces tem aquele fim de curso que vai em cima das cremalheira onde bate a mola do final de curso.  ( peça plastica de +- 7 cm  )', '2017-01-24 08:04:35', 1, 'Cliente Residencial', '', '0'),
(226, 'Manoela', 'manoeladiasrosa0@gmail.com', '(48) 9961-75088', 'Boa noite, segue em anexo currículo para possível vaga em aberto.\nGrata desde já.', '2017-01-24 22:25:46', 1, '0', '2017012422254680.docx', '0'),
(227, 'Gustavo', 'gustavo@webi.com.br', '(48) 9986-5321', 'teste', '2017-01-26 11:22:03', 1, 'Empresa', '', 'Câmeras AHD'),
(228, 'LUIZ CALIL', '47calil@gmail.com', '(67) 9922-11090', 'Reparo urgente em portão PVC ,é preciso trocar roldanas,cremalheira e engrenagem.\nAguardo e agradeço.\nLuiz ', '2017-01-26 19:09:03', 1, 'Condomínio', '', 'Portão Deslizante'),
(229, 'EMELI LEMOS ', 'emelilp@yahoo.com.br', '(48) 9997-42361', 'Tenho interesse em cotações de motor (com instalação) para portão deslizante. E também em cotações de interfone ( instalado ). Obrigada ', '2017-01-28 20:53:05', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(230, 'Teste', 'teste@teste.com.br', '(32) 1987-63198', 'Teste Mensagem', '2017-01-30 09:52:36', 1, 'Cliente Residencial', '', '0'),
(231, 'Teste', 'teste@teste.com.br', '(43) 2532-52362', 'Teste Mensagem', '2017-01-30 09:54:42', 1, 'Indústria', '', 'Portão Deslizante'),
(232, 'Rafael Dessbesell', 'projeto@gdiempreendimentos.com', '(48) 3209-6185', 'Bom dia, vocês trabalham com portão eletrônico de abrir?\n', '2017-01-31 11:23:47', 1, 'Empresa', '', '0'),
(233, 'Vanessa Figueiredo', 'vlaguiar@hotmail.com', '(48) 9626-8812', 'Boa Tarde,\n\nEncaminho o meu currículo para uma oportunidade de trabalho.\n\nObrigada\n', '2017-02-01 22:12:25', 1, '0', '2017020122122564.pdf', '0'),
(234, 'SAVANA PADILHA', 'savanapad@gmail.com', '(48) 9986-29036', 'Estou em busca de uma nova oportunidade de trabalho, sendo assim apresento-lhes meu currículo em anexo.\nEntre minhas características estão: responsabilidade, pontualidade, pró -ativa, dedicada e focada no trabalho. \nTenho disponibilidade de tempo e inicio imediato.\nNo aguardo de contato de sua parte, coloco-me à disposição para prestar-lhes mais esclarecimentos.\n\nAtt;\nSavana ', '2017-02-02 15:56:10', 1, '0', '2017020215561087.docx', '0'),
(235, 'Djonathan Cardoso', 'djonathan.10@hotmail.com', '(48) 9648-3934', 'Olá,\nEstou encaminhando meu curriculum para futuras oportunidades.\nDesde já agradeço a atenção.', '2017-02-07 14:45:07', 1, '0', '2017020714450779.pdf', '0'),
(236, 'Rogério vargas Tiago', 'rogeriotiagovargas@hotmail.com', '(48) 9881-49305', 'Local aonde prestei o meu serviço de vigilante e espingardeiro. Cifra – Vigilância, Segurança e transporte de valores LTDA. Ocupando o cargo de vigilante, e no cargo de Espingardeiro no carro forte a serviço da Cifra no transporte de valores, trabalhando 4 anos na empresa. Motivo saída: a firma perdeu postos e não possui mais vigilantes no quadro de funcionários. Curso e comprovação em diploma de vigilante e transporte de valores.', '2017-02-07 22:25:01', 1, '0', '2017020722250171.docx', '0'),
(237, 'ROSELI BRONZONI DA MAIA', 'roselibronzonii@gmail.com', '(48) 98828-9498', 'Boa tarde, gostaria de ter uma oportunidade na área de vigilante da Cimtel.', '2017-02-08 16:01:23', 1, '0', '2017020816012341.doc', '0'),
(238, 'Jonathan dos santos oliveira', 'jonathanoliveira.scs@gmail.com', '(48) 9917-42203', 'Segue em anexo meu curriculum para uma possível vaga de emprego , desde de já agradeço . \natt Jonathan ', '2017-02-10 00:31:44', 1, '0', '2017021000314471.rtf', '0'),
(239, 'Thomas K S Bach', 'bachschuck@hotmail.com', '(51) 9933-41505', 'Boa noite.\nGostaria de autoamtizar um portao deslizante na minha residencia no bairro Sao Joao do Rio Vermelho, Florianopolis.\nO portao tem aproximadamente 400 Kg  e 4 mts de comprimento.\nEste postao nao tem muio fluxo de abre e fecha por se tratar de uma residencia...\nQuais sao as marcas de motores que voces recomendam e se tem possibilidade de me passar um orçamento com o custo de instalaçao...\nNo aguardo e obrigado.\nThomas Bach\n', '2017-02-16 20:50:36', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(240, 'Sergio', 'sergiokoepsel@hotmail.com', '(48) 3249-0934', 'Boa tarde!\nSolicito, por favor, cotação para aquisição do seguinte equipamento:\n1 unidade d automatizador d elevação 1/3 torre 1,75mt, ciclo abertura 35x/hora, c/ controles.\n\nAtt,\n\nSergio', '2017-02-20 16:58:39', 1, 'Condomínio', '', '0'),
(241, 'Felippe Robert Machado Verderame', 'felipperobert@yahoo.com.br', '(48) 9913-05555', 'Estou a procura de uma nova oportunidade de trabalho, quero me reintroduzir ao mercado de trabalho.\nCaso meu perfil possa ser aproveitado ficarei bastante contente em participar do processo de seleção e prestar maiores esclarecimentos quanto ao conhecimentos e melhor análise curricular.\n\nAtenciosamente,\nFelippe Robert Machado Verderame', '2017-02-21 16:09:11', 1, '0', '2017022116091116.rtf', '0'),
(242, 'Cristian Elias Lagos Montero', 'ingminasclm@gmail.com', '(48) 9968-89100', 'Bom dia,\n\nEstou cursando Eletrotécnica no Instituto Federal de Santa Catarina(IFSC) e gostaria de saber se a Cimtel disponibiliza vagas para estágio, para que possa me candidatar.\n\nDesde já agradeço pela atenção,\n\natt\n\nCristian Lagos Montero', '2017-02-23 09:51:52', 1, '0', '2017022309515285.doc', '0'),
(243, 'Edson Daum', 'edsondaum@gmail.com', '(48) 9191-3167', 'tenho interesse em adquirir dvr com camaras com acesso na web, pelo iphone, notebook ', '2017-02-24 07:29:37', 1, 'Cliente Residencial', '', 'Gravadores DVR, NVR e AHD'),
(244, 'Demétrio Delizoicov Neto', 'demetrio.neto@ufsc.br', '', 'Pretendo comprar apenas o motor para portão deslizante que já está instalado. Solicito dados técnicos do(s) motor(es) a venda e valores com e sem custo de instalação. Obrigado', '2017-02-24 15:52:48', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(245, 'José Henrique', 'jhsimones@gmail.com', '48991925375', 'Ver se fazem a instalação de CFTV com energia solar.', '2017-02-27 12:36:39', 1, 'Empresa', '', 'Projeto de sistema CFTV'),
(246, 'Walter', 'wa221007@gmail.com', '(53) 9841-84167', 'Gostaria de orçamento para sistema de cameras IP, ou sistema de monitoramento por cameras,  para minha residencia', '2017-02-28 08:34:14', 1, 'Cliente Residencial', '', '0'),
(247, 'thiago souza da costa', 'thiagosouzadacosta@hotmail.com', '98493337', 'Com exeriencia na area tecnica ', '2017-02-28 16:43:22', 1, '0', '2017022816432229.docx', '0'),
(248, 'Mauricio Bertolini', 'mauricio@lamadameco.com', '(48) 9992-50210', 'Tenho interesse em orçar a instalação de um kit de câmeras em uma sala comercial.', '2017-03-03 03:48:37', 1, 'Empresa', '', 'Projeto de sistema CFTV'),
(249, 'Dominique Rodrigues Barros', 'dominiquepsicologiarh@gmail.com', '(48) 9845-35142', 'Posso ajudar no crescimento empresarial desta empresa pois já possuo forte experiência no ramo da Segurança Eletrônica, onde trabalhei do ano de 2012 a 2016 em uma empresa do ramo.', '2017-03-03 09:05:41', 1, '0', '2017030309054116.doc', '0'),
(250, 'Cesar Veiga', 'recepcao1@castelmarhotel.com.br', '(48) 3952-3200', 'Bom dia,\n\nPor favor enviar orçamento de HD para DVR Intelbras de 1 e 2 Tera.\n\nObrigado.', '2017-03-03 11:37:49', 1, 'Outros', '', '0'),
(251, 'Patricia Costa', 'patricia.costa@scytech.com.br', '(48) 9991-48828', 'Boa tarde!\nGostaria de estar realizando um orçamento para monitoramento eletrônico da minha empresa, quais as informações  que vocês precisam? ', '2017-03-09 17:56:52', 1, 'Empresa', '', '0'),
(252, 'Nikolas Bonfim Dutra', 'nikolasbdutra@gmail.com', '(48) 9994-89417', 'Bom Dia,\n\nEstou deixando meu email com a Pensys para trabalho em vagas abertas ou futuras vagas que vão abrir, trabalho hoje com eletrônica na Produza e estou a um semestre de me formar em engenharia elétrica na Faculdade da Unisul.\n\nqualquer  duvida fico a disposição.', '2017-03-10 10:33:52', 1, '0', '2017031010335229.pdf', '0'),
(253, 'Giancarlo Espindola Macedo', 'gian_macedo@hotmail.com', '(48) 9130-5812', 'Estou em busca de uma oportunidade, me formei em automação industrial  em 2016, atualmente estou cursando  mecatrônica no IFSC, tenho disponibilidade para trabalhar, estudo a noite.', '2017-03-10 21:12:28', 1, '0', '2017031021122894.pdf', '0'),
(254, 'Fabiani da Silveira Beulch', 'fabiani.beulch@hotmail.com', '(48) 9993-05856', 'Bom dia. Preciso de dois motores basculantes super rápidos para instalação no condomínio. Não sei se é possível fazer a cotação de preços?\nO condomínio fica na Praia Comprida em São José.', '2017-03-12 10:11:25', 1, 'Condomínio', '', 'Portão Basculante'),
(255, 'Sara Gaebler', 'saragaebler@hotmail.com', '(48) 9123-2469', 'Já temos o portão basculante e queria saber o preço de motor e instalação.', '2017-03-14 09:26:29', 1, 'Cliente Residencial', '', 'Portão Basculante'),
(256, 'Paulo Roberto', 'vendas@cimtel.com.br', '(48) 9182-5751', 'teste', '2017-03-22 17:59:53', 1, 'Condomínio', '', '0'),
(257, 'Paulo', 'plenzisc@gmail.com', '48 999520246', 'Prezado(a) Sr(a),\nGostaria de um orçamento para colocar câmeras em meu apto. Seriam em torno de 04 câmeras, para que tenha a possibilidade de acompanhar pelo celular. \nQuais as opções que poderiam orçar?\n\nNo aguardo de algum retorno,\n\nAtt\n\nPaulo', '2017-03-23 11:19:15', 1, 'Cliente Residencial', '', '0'),
(258, 'José Luiz Alves Ribeiro ', 'jlaribeiro51@hotmail.com', '(48) 9990-2651', 'Orçamento de cerca elétrica ou com sensores', '2017-03-23 21:43:03', 1, 'Condomínio', '', 'Sistema de Cerca Elétrica'),
(259, 'DEBORA CRISTIANE RAMOS VIEIRA', 'dvieira78@gmail.com', '(48) 9912 - 2806', 'Tenho interesse na Área Administrativa. Obrigada', '2017-03-29 11:23:02', 1, '0', '2017032911230256.pdf', '0'),
(260, 'Pablo', 'pdutra1@hotmail.com', '(48) 9915-19175', 'Olá, gostaria de um orçamento para um portão basculante 2,20 de altura e 2,60 de largura, automatizado. Condições de pagamento e tempo de entrega.\n\nEntrega e colocação Jardim Botânico, Potecas, São José-SC.', '2017-04-02 09:37:08', 1, 'Cliente Residencial', '', 'Portão Basculante'),
(261, 'tamara ', 'tamara_beltiful@hotmail.com', '(48) 9999-3697', 'quebrou o moto queria fazer um orçamento', '2017-04-02 09:58:40', 1, 'Condomínio', '', 'Portão Deslizante'),
(262, 'Tiago ', 'Tiagoinu@gmail.com', '(48) 9967-56244', 'Portao de garagem opaco para casa residencial no bairro Ingleses.', '2017-04-02 17:24:55', 1, 'Cliente Residencial', '', 'Portão Basculante'),
(263, 'Jackson Martins Coelho', 'jacksonmartinscoelho@bol.com.br', '(48) 9843-45092', 'Ola tudo bem gostaria  de trabalha  na  impressa Cimtel  Obg', '2017-04-03 10:06:20', 1, '0', '2017040310062096.doc', '0'),
(264, 'Aline Korosue', 'akorosue@hotmail.com', '(48) 9990-32098', 'Gostaria de fazer um orçamento para instalação de portão deslizante em minha residência no Rio Tavares', '2017-04-03 17:30:40', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(265, 'Condominio Villa do Sol', 'villadosolresidence@gmail.com', '(48) 9996-66799', 'Bom dia,\n\nTemos contrato com a Cimtel com serviço elétrico. Precisamos orçamento para colocação CFTV com 32 câmeras.\n\nObrigado.\n\nAndré Almeida\nSíndico Villa do Sol', '2017-04-03 18:26:15', 1, 'Condomínio', '', 'Projeto de sistema CFTV'),
(266, 'Ronald Dourado', 'jjvideosmarketing@gmail.com', '(11) 9607-61042', 'Boa tarde, tudo bem?\n \nGostaria de apresentar a JJ Vídeos - Produtora de vídeos explicativos animados.\n \nNosso objetivo é fazer com que sua empresa alcance novos clientes através de vídeos.\nVídeos Animados tem sido a melhor maneira para divulgar sua marca, produtos e serviços!\n \nAssista a um exemplo de vídeo que fizemos:\n \nhttps://www.youtube.com/watch?v=myMgxVn5GW4\n​\n \n​​​Acesse nosso site e saiba mais!\nhttp://jjvideos.com.br\n \nEspero que goste, e aguardo seu contato em breve!\n', '2017-04-04 02:19:15', 1, 'Outros', '', '0'),
(267, 'Paulo Silas Jr', 'paulosilasmjr@gmail.com', '(48) 98479-2525', 'Olá, boa noite!\nTrabalho como Editor de vídeo e acredito que uma empresa como a de vocês precise de alguém como eu para fazer vídeo internos, cases de sucesso dos clientes, vídeo treinamentos, animações, enfim, essas e muitas outras possibilidades.\nComo sabemos, hoje as redes sociais tem um enorme impacto na vida das pessoas (e dos potências clientes também) e os vídeos dentro das redes sociais causam um enorme engajamento e é assim que acredito que posso ajudar muito vocês.\nSegue o link do meu portfólio online www.vimeo.com/paulosilas  - Aqui você vai encontrar alguns dos meus trabalhos feitos para o mercado publicitário (catarinense e de outros estados).\nDesde já agradeço sua atenção e estou a disposição para qualquer coisa, nem que seja apenas para bater um papo.\n\nGrande abraço', '2017-04-05 03:47:54', 1, '0', '2017040503475479.pdf', '0'),
(268, 'Rafael Almeida', 'rafaelalmeida@tropicalresidencia.com.br', '(48) 9996-50138', 'Boa Tarde\n\nGostaria conhecer os serviços Cimtel. O Condomínio está buscando soluções para telefonia interna e também sistema de monitoramento por câmeras.\n\n45 Unidades \nCondomínio Horizontal\nÁrea total do terreno 8.400 m2\n\nAguardo retorno o mais breve possível\n\nAtt\nRafael Almeida\nSíndico', '2017-04-05 13:11:14', 1, 'Condomínio', '', '0'),
(269, 'Daniel Quint dos Santos', 'danielquintdossantos@live.com', '(48) 9962-84716', 'Gostaria de orçamento para portão eletrônico deslizante em alumínio.\n1,40m x 4,00m.\n\nObrigado', '2017-04-05 19:37:57', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(270, 'Felippe Ferreira', 'felippe.ferreira@gmail.com', '(48) 9982-65114', 'Estou com problema no portão principal é gostaria de ver uma solução.', '2017-04-06 12:38:23', 1, 'Condomínio', '', 'Automação Pivotante'),
(271, 'Juçara', 'operacional@centralcomunicacao.com.br', '(48) 3216-0644', ' Preciso de um orçamento da CAMERA DOME COLOR HD 2 MEGAPIXEL HIKVISION.\n\nAtenciosamente,\nJuçara Oliveira', '2017-04-06 17:04:10', 1, 'Empresa', '', '0'),
(272, 'Felipe', 'perfettipersonal@gmail.com', '(48) 9968-81896', 'Olá, tenho interesse em um portão de 3m, deslizante.', '2017-04-06 21:42:59', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(273, 'Zatariano', 'j.zatariano@gmail.com', '(48) 9843-86548', 'Necessito de orçamento para vigilância de minha residência. \n', '2017-04-07 20:13:53', 1, 'Cliente Residencial', '', 'Projeto de sistema CFTV'),
(274, 'Leandro', 'cond.residencial.metropolitan@gmail.com', '(48) 9998-20878', 'Boa tarde, me chamo Leandro e sou o Síndico do Condomínio Metropolitan, situado na rua São Francisco, 263, Centro, Florianópolis, SC. CEP 88015-140.\nPossuo um portão deslizante na garagem do subsolo que já está me apresentando problemas nas suas atuações para abertura e fechamento.\nGostaria de uma avaliação técnica e uma solução de engenharia.\nPodemos marcar um visita "in-loco".', '2017-04-10 15:11:04', 1, 'Condomínio', '', 'Portão Deslizante (tracão por corrente)'),
(275, 'Caroline Marques', 'caroline_mqs@hotmail.com', '(48) 9842-29709', 'Olá,\n\nGostaria de deixar meu currículo no banco de talentos da empresa.', '2017-04-10 22:26:15', 1, '0', '2017041022261565.pdf', '0'),
(276, 'Eduardo Adriano da Cunha Castagnari', 'clarisseavargas@hotmail.com', '(48) 98402-5167', 'Bom Dia\n\nestou disponivel para inicio emediato', '2017-04-12 10:18:57', 1, '0', '2017041210185732.docx', '0'),
(277, 'EMERSON ADRIANO MORAES CATARINA', 'emerson.catarina@gmail.com', '(48) 9976-4351', 'Prezado(a) Recrutador(a),\n\nA oportunidade de trabalhar na sua empresa condiz muito bem com minha vontade de ampliação de horizontes. \nAlém da experiência nas áreas técnicas de redes e telecomunicações, tenho experiência em liderança de equipes assim como na área comercial tendo atuado em Pré-vendas, Marketing de Produtos e com Inteligência Competitiva.\n\nEspecificamente, possuo as seguintes qualificações e experiências além das que se mostram no currículo:\n\n- Conhecimento do mercado de Telecom/TI, ISPs, Segurança e Defesa;\n- Análise e Pesquisa de Mercado visando determinar os melhores produtos a serem lançados;\n- Conhecimento de redes, roteamento, switching, telecomunicações e Cloud Services;\n- Conhecimento de servidores em sistemas operacionais Linux e Windows;\n- Pré Vendas, Análise e Projetos de Soluções e Infraestrutura de redes;\n- Metodologia Ágil com SCRUM visando o melhor resultado respeitando as individualidades de cada membro da equipe;\n- Linguagens de Programação: Shell Script, C, Javascript, C#, HTML/CSS, Mobile;\n- Liderança de times com foco em resultado;\n- Negociação para o melhor trabalho em equipes;\n- Treinamento sobre produtos e de força de vendas;\n\nO currículo anexo e meu perfil do LinkedIn (http://br.linkedin.com/in/emersoncatarina)  fornecem mais detalhes sobre minhas outras experiências e realizações anteriores. Recomendações de outros profissionais, antigos colegas e chefes também estão disponíveis no meu perfil do LinkedIn.\n\nAgradeço por seu tempo e atenção. Aguardo seu contato em breve e coloco-me a disposição para eventuais entrevistas ou esclarecimentos.\n\nAtt,\n\nEmerson A. M. Catarina\nFones: (48) 9976-4351 / 3296-0896\ne-mail:emerson.catarina@gmail.com\nLinkedIn: http://br.linkedin.com/in/emersoncatarina', '2017-04-13 14:02:09', 1, '0', '2017041314020946.pdf', '0'),
(278, 'Dayvison Paris', 'dayvisonparis@globo.com', '(48) 9840-34296', 'Necessito realizar um orçamento para automatizar a porta interna de acesso de meu condominio.', '2017-04-17 10:10:55', 1, 'Condomínio', '', 'Portas Automáticas'),
(279, 'Rafael Cottica', 'rafaelcottica@gmail.com', '(48) 9913 - 3061', 'Profissional graduado em Redes de Computadores, Certificado LPIC-1. Linux System Administrator, Certificado ITIL V3 Foundation, Certificado Novell. Data Center Technical Specialist, Certificado Novell. Certified Linux Administrator e Certificado Amazon Cloud Professional com disponibilidade imediata.', '2017-04-18 16:56:05', 1, '0', '2017041816560519.pdf', '0'),
(280, 'Rodrigo Gonçalves', 'rodrigorx@hotmail.com.br', '(48) 3024-1412', 'vaga de vilante ou porteiro', '2017-04-21 10:01:39', 1, '0', '2017042110013921.doc', '0'),
(281, 'BELO MAR ADM DE COND ', 'admbelomar@gmail.com', '(48) 3091-2699', 'Preciso de um orçamento de cameras para um condomínio que administramos. ', '2017-04-22 09:19:57', 1, 'Condomínio', '', '0'),
(282, 'Gabriel Luiz Weber', 'weberinstalacoeseletricas@gmail.com', '(48) 9986-4364', 'ola estou a procura de trabalho, sou eletricista há 8 anos na região de Balneário Camboriú e  itajai. me mudei pra cá agora, possuo transporte e quero trabalhar. NR10 em dia. Desde já obrigado pela atenção.\n\nCurriculum vitae\nGABRIEL LUIZ WEBER\nD.N. :27/08/1976\nBrasileiro; Solteiro\nEnd: Rua Prof Marcos Cardoso Filho, 277, Corrego Grande.\nCep 88037 040, Florianópolis, Santa Catarina\n( 48) 998643643 (48) 988323269\n(48) 32331465\nE-mail: weberintalacoeseletricas@gmail.com\n \nObjetivo: Eletricista\nGrau de Escolaridade\nEnsino Médio Completo\nExperiência Profissional:\n* MMW Empreiteira de Mão de Obra\nFunção: Eletricista\nAdmissão: 01/08/16 Demissão: 01/02/17\nAtividades desempenhadas: instalações elétricas em geral, quadros de distribuição, eletro calhas e plumadas.\n*Instaladora Elétrica Chrisma Ltda – ME\nFunção: Eletricista\nAdmissão: 27/01/2015 –Demissão: 21/01/2016\nAtividades desempenhadas: Instalações elétricas prediais; manutenção de toda a obra em geral.\nCursos de Especialização\n* Segurança em Instalações Elétricas NR-10\nDuração: 40 horas\nPeríodo: 04/06/2011 à 09/07/2011\nInstituição: Ministrado pela Treinare Desenvolvimento Profissional – Itajaí/SC\n \n*Reciclagem NR10\nPeriodo 11 a 15 de julho de 2016 e 18 a 22 de julho de 2016\nInstituição: RV Medicina Assessoria Segurança do Trabalho\n*NR35\nPeríodo: 30 /07/2016\nEmpresa RV Medicina Assessoria  Segurança do Trabalho\n \n*Eletricista de Instalação Prediais e Residenciais\nDuração: 120 horas\nPeríodo: 08/02/2010 à 17/05/2010\nInstituição: Senai – Balneário Camboriú.\n ', '2017-04-24 23:09:27', 1, '0', '2017042423092716.jpg', '0'),
(283, '0', '0', '0', '0', '2017-04-25 16:16:08', 1, '0', '', '0'),
(284, 'Jaqueline', 'devasconcellosemc@gmail.com', '(48) 9616-0503', 'Tenho interesse em instalar câmeras de segurança em minha residência, gostaria de analisar algumas opções de cotação.\n\n', '2017-04-26 13:54:23', 1, 'Cliente Residencial', '', '0'),
(285, 'José André - Escola À Nova Dimensão', 'joseandre@escolanovadimensao.com', '(48) 9918-57077', 'Bom dia!\n\nGostaria de realizar um orçamento para a instalação de câmeras de monitoramento em nossa escola. \n\nPrecisamos de:\n- 16 câmeras internas HD\n- 4 câmeras externas HD\n- DVR de 16 canais\n- DVR de 32 canais\n- Instalação\n\nFico no aguardo de um retorno.\n\nAtt,\nJosé André.', '2017-04-27 09:37:58', 1, 'Empresa', '', 'Projeto de sistema CFTV'),
(286, 'Kleber Luiz Rodrigues', 'kleberluizrodrigues13@gmail.com', '(48) 98420-3050', 'Bom dia.\n\nSegue meu currículo para participar de processos seletivos da empresa.\n\nDesde já agradeço.\n\nAtenciosamente.\nKleber Luz Rodrigues', '2017-04-27 09:39:48', 1, '0', '2017042709394847.pdf', '0'),
(287, 'Anthony David Lisboa', 'engenheiro.anthony@gmail.com', '(49) 99965-5994', 'Com 5 anos de experiência em engenharia de automação e elétrica, procuro uma oportunidade para desempenhar atividades nesta área, Já tive o privilégio de trabalhar com Gerenciamento de projetos de Automação em grandes empresas automobilísticas e papeleiras, boa experiência em gestão de equipes, conhecimentos em interpretação de projetos de automação e elétrica, bem como alterações em CAD, ótima experiência em montagem de painéis elétricos industriais e leitura de projetos, manutenção elétrica e automação industrial, também conto com experiência em orçamentos, especificação e controle de materiais. \nConsidero-me uma pessoa com perfil empreendedor, para elaborar e coordenar projetos. Tenho bom relacionamento interpessoal, dinâmica, flexibilidade e encontro-me preparado para o desafio de novas funções e atividades.\nDesde já coloco-me a disposição para uma entrevista podendo assim apresentar melhor meu currículo.', '2017-05-04 10:19:29', 1, '0', '2017050410192976.pdf', '0'),
(288, 'Anaide Lopes', 'condominiorubi141@gmail.com', '(48)999125714', 'Sou síndica do Edifício Rubi (condomínio composto por seis apartamentos), precisamos de orçamentos com várias possibilidades de interfones e portões automáticos.\nNo aguardo.', '2017-05-08 00:44:55', 1, 'Condomínio', '', '0'),
(289, 'KAROL', 'recepcao@appromocoes.com.br', '(48) 9991-11461', 'Boa tarde,\n\ntenho um portao basculante e gostaria de saber se voces trabalham com a trava para portao eletronico? Pois memo sendo eletronico, andaram tentando levantar o portao.\n\nFico no aguardo.\n\nObrigada', '2017-05-09 14:28:34', 1, 'Empresa', '', 'Portão Basculante'),
(290, 'Gustavo Sagás Magalhães', 'gustavo.magalhaes@ufsc.br', '(48) 3271-6137', 'Saudações,\n\nSou funcionário da UFSC, trabalho com Administrador de Edifícios, gostaria de ter um orçamento. Precisamos instalar portas automatizadas, que sejam abertas com o crachá do funcionário. Temos um bloco de salas de aula, de 3 andares, com cerca de 40 portas. Gostaríamos de um orçamento nesse sentido, para instalarmos todas essas fechaduras com controle por crachá ou mesmo senha. \n\nAtenciosamente,\nGustavo', '2017-05-16 08:58:08', 1, 'Outros', '', '0'),
(291, 'CRISTIANO', 'cristianofpolis2@gmail.com', '(48) 9913-16600', 'Gostaria de uma ideia de custo de instalação e mensalidade de monitoramento de minha loja no Kobrassol', '2017-05-17 17:14:38', 1, 'Empresa', '', '0'),
(292, 'LUIS ROBERTO LIMA ALVES', 'roberthoamil@gmail.com', '(47) 9918-15981', 'Olá\n\nMeu nome é Luís Roberto, sou Técnico Eletricista, com formação técnica em Automação Industrial.\nAtualmente, busco uma nova oportunidade no mercado de trabalho.\nSegue anexo o meu currículo completo para a sua avaliação. Desde já agradeço a oportunidade e me coloco a disposição para uma possível entrevista.', '2017-05-17 22:13:11', 1, '0', '2017051722131150.docx', '0'),
(293, 'vierne', 'ivonevierne0@gmail.com', '(99) 9996-69966', 'Oi gostaria de saber o valor de um portão simples. Com 4.50 de comprido .por 2.20.de altura', '2017-05-18 12:02:18', 1, 'Cliente Residencial', '', 'Portão Deslizante'),
(294, '0', '0', '0', '0', '2017-05-20 20:32:12', 1, '0', '', '0'),
(295, 'Gustavo Bittencourt', 'gubitt@hotmail.com', '', 'Boa tarde,\nestou pensando em abrir um minimercado e estou fazendo algumas pesquisas de viabilidade. Algo indispensável para a segurança do meu estabelecimento seria ter instalado um sistema de câmeras de segurança, o local em que planejo abrir meu empreendimento possui 130m2. Gostaria que as câmeras cobrissem bem o local, se possível me mande um orçamento.\nAgradeço desde já.', '2017-05-22 14:48:21', 1, 'Cliente Residencial', '', '0'),
(296, 'CLAUDECIR ANTUNES', 'cfloripa19@gmail.com', '(48)998581351', 'Vaga para zelador porteiro jardineiro, Mais de 15 anos de experiencia e qualificaçao na funçao?', '2017-05-25 21:55:02', 1, '0', '', '0'),
(297, 'Lucas Amaro', 'lucas16amaro@hotmail.com', '(48) 9996-97700', 'Boa tarde, procuro portão basculante de chapa já com porta e fechadura tetra largura de 2,50. Obrigado', '2017-05-26 17:39:51', 1, 'Cliente Residencial', '', 'Portão Basculante'),
(298, 'Rosa Oliveira ', 'rosamro2013@gmail.com', '', 'Gostaria de colocar uma câmera na frente de minha casa e y.a nos fundos.', '2017-05-29 22:23:44', 1, 'Cliente Residencial', '', '0'),
(299, 'Luis Felipe Mendonca', 'lfelipem@msn.com', '(55) 9914-27414', 'Bom dia,\n\nMeu nome é Luís Felipe, sou da Universidade Federal de Santa Catarina e gostaria de um orçamento sobre a compra de 1 motor de portão eletrônico 0,5 hp ou 0,25Hp.\n\nSe possível o orçamento deveria ser endereçado a:\n\nNome: Glicério Trichês\nCPF: 376867989-68\nInscrição estadual:256388334\nEndereço: Rua almirante Lamego - 674\nCentro - Florianópolis\nFone:30282807\n\nDesde já agradeço.\n\natt.\n\nL.F.M.', '2017-06-02 09:26:08', 1, 'Cliente Residencial', '', '0'),
(300, 'De Pinho', 'geopinho@gmail.com', '(48) 8422-4638', 'Olá preciso de modelos de portão pra residência ', '2017-06-05 10:38:11', 1, 'Cliente Residencial', '', 'Portão Deslizante');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_log_acessos`
--

CREATE TABLE `gercont_codemin_log_acessos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `ip_usuario` varchar(15) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_log_acessos`
--

INSERT INTO `gercont_codemin_log_acessos` (`id`, `id_usuario`, `ip_usuario`, `user_agent`, `data`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2490.71 Safari/537.36', '2016-06-20 16:34:15'),
(2, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2490.71 Safari/537.36', '2016-06-20 16:34:28'),
(3, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2490.71 Safari/537.36', '2016-06-20 16:34:37'),
(4, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-20 16:35:20'),
(5, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-22 20:34:58'),
(6, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-23 16:26:24'),
(7, 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-27 09:13:26'),
(8, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-28 14:59:20'),
(9, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-29 13:59:34'),
(10, 1, '177.16.111.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-06-30 16:52:21'),
(11, 1, '189.115.59.190', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-01 10:09:48'),
(12, 1, '189.115.59.190', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-01 10:22:20'),
(13, 1, '189.115.59.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-01 11:25:08'),
(14, 1, '189.115.59.190', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-01 14:19:20'),
(15, 1, '189.115.59.190', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-01 17:16:51'),
(16, 1, '189.26.141.250', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-04 13:25:16'),
(17, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-05 14:38:40'),
(18, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-05 15:27:24'),
(19, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-06 08:28:32'),
(20, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-06 09:31:54'),
(21, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-06 14:11:09'),
(22, 1, '177.97.189.187', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-06 15:48:27'),
(23, 1, '179.187.94.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-07 09:17:03'),
(24, 1, '179.187.94.241', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-07-07 09:43:40'),
(25, 1, '179.187.94.241', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-07 12:55:01'),
(26, 1, '189.4.73.243', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '2016-07-07 20:41:40'),
(27, 1, '179.187.94.241', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-08 10:33:11'),
(28, 1, '179.187.94.241', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-08 13:18:32'),
(29, 1, '179.187.94.241', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-08 14:27:41'),
(30, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-07-11 13:21:46'),
(31, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-11 15:33:51'),
(32, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-12 08:22:45'),
(33, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-12 09:44:56'),
(34, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-12 14:18:52'),
(35, 1, '187.112.64.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-12 16:03:08'),
(36, 1, '189.114.201.175', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-13 08:36:25'),
(37, 1, '189.114.201.175', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-13 14:13:59'),
(38, 1, '189.114.201.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-14 13:15:55'),
(39, 1, '187.112.88.141', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-15 10:00:49'),
(40, 1, '187.112.78.104', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-15 12:04:34'),
(41, 1, '189.114.202.227', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-18 08:28:55'),
(42, 1, '177.96.135.235', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-27 15:07:42'),
(43, 1, '187.112.65.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-27 17:29:38'),
(44, 1, '177.96.148.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-28 08:46:18'),
(45, 1, '177.96.148.71', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '2016-07-28 10:06:04'),
(46, 1, '177.132.96.113', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-08-31 17:44:02'),
(47, 1, '177.132.96.113', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-09-01 09:27:04'),
(48, 1, '187.112.255.82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-09-05 08:43:28'),
(49, 1, '201.86.64.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '2016-09-09 15:32:57'),
(50, 1, '177.16.146.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36', '2016-09-12 13:44:16'),
(51, 1, '179.180.160.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.3', '2016-09-14 09:53:15'),
(52, 1, '189.31.65.10', 'Mozilla/5.0 (X11; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-09-15 08:10:04'),
(53, 1, '177.41.240.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-21 08:27:45'),
(54, 1, '201.22.84.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-23 13:35:32'),
(55, 1, '177.96.160.53', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-09-29 10:42:33'),
(56, 1, '177.96.154.214', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', '2016-10-03 15:23:22'),
(57, 1, '189.114.204.82', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-10-05 17:37:22'),
(58, 1, '177.132.101.73', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-10-06 08:43:59'),
(59, 1, '200.146.56.54', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-10-06 13:55:55'),
(60, 1, '179.187.91.187', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', '2016-10-10 17:10:08'),
(61, 1, '189.114.192.84', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', '2016-10-21 17:08:09'),
(62, 1, '187.112.72.97', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-11-21 10:58:40'),
(63, 1, '177.42.48.250', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-11-28 12:45:46'),
(64, 1, '189.26.130.129', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2016-12-01 14:53:57'),
(65, 1, '179.180.164.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-06 17:16:33'),
(66, 1, '179.180.163.40', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-18 12:33:54'),
(67, 1, '177.96.163.21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-24 14:14:33'),
(68, 1, '177.96.146.17', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-25 09:59:14'),
(69, 1, '179.180.175.113', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-26 11:16:53'),
(70, 2, '179.180.175.113', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-26 11:26:15'),
(71, 2, '179.180.175.113', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-26 11:31:36'),
(72, 2, '177.196.164.79', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C9', '2017-01-26 13:35:28'),
(73, 2, '177.16.145.78', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-26 15:43:00'),
(74, 1, '179.180.175.113', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-26 16:02:16'),
(75, 2, '177.16.145.78', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-26 19:17:47'),
(76, 2, '189.26.134.28', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-27 13:47:30'),
(77, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-30 08:47:16'),
(78, 1, '179.180.173.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-30 09:51:44'),
(79, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-01-31 10:15:42'),
(80, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-01-31 19:39:05'),
(81, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-01 07:28:45'),
(82, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-01 16:50:59'),
(83, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-02 07:32:31'),
(84, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '2017-02-02 09:19:14'),
(85, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-02 12:43:03'),
(86, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-02 15:20:39'),
(87, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-03 07:50:14'),
(88, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-03 11:24:37'),
(89, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-03 14:00:06'),
(90, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-03 15:21:46'),
(91, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-06 07:57:07'),
(92, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-06 11:30:51'),
(93, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '2017-02-06 16:39:01'),
(94, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-07 08:08:32'),
(95, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-07 16:26:58'),
(96, 1, '177.96.170.208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-07 16:38:36'),
(97, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-08 07:48:48'),
(98, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-08 14:01:23'),
(99, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-09 08:03:25'),
(100, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-09 15:43:29'),
(101, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-10 08:14:36'),
(102, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-13 07:41:32'),
(103, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-13 14:48:40'),
(104, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-13 16:55:22'),
(105, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-13 17:45:08'),
(106, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-14 10:58:28'),
(107, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-14 14:27:23'),
(108, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-15 13:28:38'),
(109, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-15 16:35:25'),
(110, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-16 08:11:19'),
(111, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-16 16:12:20'),
(112, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-16 17:03:12'),
(113, 1, '187.58.206.238', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-16 17:30:38'),
(114, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-17 12:50:24'),
(115, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-17 16:09:11'),
(116, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-20 08:25:29'),
(117, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-20 11:34:44'),
(118, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-20 14:01:02'),
(119, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-20 16:32:47'),
(120, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-21 07:37:27'),
(121, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-21 11:12:00'),
(122, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-21 15:52:25'),
(123, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-22 07:58:28'),
(124, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-22 16:14:16'),
(125, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-22 17:01:47'),
(126, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 07:38:28'),
(127, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 09:57:29'),
(128, 1, '177.16.200.189', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 11:24:54'),
(129, 1, '177.204.32.241', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 14:31:21'),
(130, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 14:54:34'),
(131, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-23 16:59:10'),
(132, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-24 08:51:03'),
(133, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-02-24 13:47:40'),
(134, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-01 07:29:15'),
(135, 1, '177.16.205.97', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-01 10:24:03'),
(136, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-01 10:38:56'),
(137, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-01 13:48:23'),
(138, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-02 07:24:16'),
(139, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-02 10:35:40'),
(140, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-02 16:34:10'),
(141, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-03 07:40:13'),
(142, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-03 14:18:58'),
(143, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-06 08:17:10'),
(144, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-06 12:42:50'),
(145, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-06 15:38:37'),
(146, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-07 08:08:27'),
(147, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-07 11:11:35'),
(148, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-07 15:43:46'),
(149, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-08 07:39:54'),
(150, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-08 13:49:31'),
(151, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-09 11:28:06'),
(152, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-09 16:06:05'),
(153, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-10 07:33:45'),
(154, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-10 12:37:10'),
(155, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-10 17:21:22'),
(156, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-13 07:36:43'),
(157, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-13 10:55:13'),
(158, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-13 15:51:26'),
(159, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-14 15:28:13'),
(160, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-15 07:33:07'),
(161, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-15 13:27:24'),
(162, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-15 16:12:13'),
(163, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-15 17:25:45'),
(164, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-16 07:54:57'),
(165, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-16 14:09:01'),
(166, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-16 16:35:54'),
(167, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-17 07:34:49'),
(168, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-17 11:09:28'),
(169, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-17 13:48:38'),
(170, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-20 07:21:42'),
(171, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-20 11:37:15'),
(172, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-20 16:44:10'),
(173, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-20 17:47:50'),
(174, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-21 07:47:13'),
(175, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-22 08:15:38'),
(176, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-22 13:50:22'),
(177, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 07:41:21'),
(178, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 10:14:10'),
(179, 1, '177.97.185.254', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36', '2017-03-24 15:08:13'),
(180, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-24 15:17:36'),
(181, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-27 07:32:49'),
(182, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-27 11:35:09'),
(183, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-27 14:26:11'),
(184, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-28 11:54:45'),
(185, 1, '187.115.48.139', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', '2017-03-28 14:08:54'),
(186, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-28 14:37:00'),
(187, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-28 17:47:01'),
(188, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-29 08:14:10'),
(189, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-29 10:54:02'),
(190, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-30 09:04:10'),
(191, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-30 17:19:00'),
(192, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-31 08:53:40'),
(193, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-03-31 14:27:10'),
(194, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-03 08:04:39'),
(195, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-03 11:31:17'),
(196, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-03 13:58:29'),
(197, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-04 07:39:33'),
(198, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-04 10:14:18'),
(199, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-04 15:09:07'),
(200, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-04 17:23:45'),
(201, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05 14:04:50'),
(202, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-05 17:32:49'),
(203, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-06 14:50:57'),
(204, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-07 17:43:01'),
(205, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-10 11:28:35'),
(206, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-10 16:37:53'),
(207, 1, '189.26.134.206', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-11 10:00:29'),
(208, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-12 14:45:50'),
(209, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-13 14:58:56'),
(210, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-17 07:33:39'),
(211, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-17 11:35:58'),
(212, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-17 16:36:54'),
(213, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18 08:05:50'),
(214, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18 16:53:43'),
(215, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19 08:41:04'),
(216, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19 16:13:31'),
(217, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-20 13:34:21'),
(218, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-24 07:56:06'),
(219, 1, '177.96.163.221', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-24 12:43:21'),
(220, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25 07:47:59'),
(221, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25 11:48:17'),
(222, 1, '179.180.170.141', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25 14:36:39'),
(223, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25 14:40:56'),
(224, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-26 07:45:19'),
(225, 1, '179.180.170.141', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-26 10:20:36'),
(226, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-26 17:34:16'),
(227, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-27 08:16:30'),
(228, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-27 11:04:17'),
(229, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-27 13:59:10'),
(230, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-28 08:09:21'),
(231, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-28 13:53:36'),
(232, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '2017-04-28 16:52:29'),
(233, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-03 17:03:46'),
(234, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-04 07:42:02'),
(235, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-05 07:44:32'),
(236, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-05 15:10:21'),
(237, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-08 14:50:53'),
(238, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-08 16:52:42'),
(239, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-09 08:06:43'),
(240, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-09 14:27:07'),
(241, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-09 16:40:51'),
(242, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-10 07:39:08'),
(243, 1, '179.183.218.5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '2017-05-10 09:44:27'),
(244, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-10 16:09:24'),
(245, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-11 14:23:05'),
(246, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-11 17:42:54'),
(247, 1, '177.42.39.218', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '2017-05-15 13:25:42'),
(248, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-16 07:42:40'),
(249, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-16 13:50:05'),
(250, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-16 16:32:06'),
(251, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-18 07:44:44'),
(252, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-18 15:43:50'),
(253, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-19 07:45:32'),
(254, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-19 13:35:46'),
(255, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-19 16:00:56'),
(256, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-22 11:17:53'),
(257, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-23 09:28:56'),
(258, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-24 14:25:43'),
(259, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-24 16:42:50'),
(260, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-25 15:23:26'),
(261, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-26 08:13:58'),
(262, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-26 15:53:32'),
(263, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-29 08:09:44'),
(264, 1, '179.180.167.105', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-29 10:03:45'),
(265, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-29 11:11:36'),
(266, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-29 15:42:56'),
(267, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-30 07:47:59'),
(268, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-30 11:15:40'),
(269, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-30 13:51:10'),
(270, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-30 16:53:50'),
(271, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-31 07:49:38'),
(272, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-31 09:59:38'),
(273, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-31 13:52:00'),
(274, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-05-31 16:53:12'),
(275, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-01 07:53:15'),
(276, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-01 10:35:12'),
(277, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-01 13:23:05'),
(278, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-01 16:54:05'),
(279, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-02 10:35:22'),
(280, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-02 16:17:03'),
(281, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-05 07:34:40'),
(282, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-05 09:23:35'),
(283, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-05 15:35:03'),
(284, 2, '186.215.191.51', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2017-06-06 07:43:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_log_acoes`
--

CREATE TABLE `gercont_codemin_log_acoes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `acao` int(1) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_log_acoes`
--

INSERT INTO `gercont_codemin_log_acoes` (`id`, `id_usuario`, `tabela`, `id_registro`, `acao`, `data`) VALUES
(1, 1, 'contato', 1, 1, '2016-06-20 16:35:46'),
(2, 1, 'configuracoes', 1, 1, '2016-06-22 21:12:37'),
(3, 1, 'noticias', 1, 1, '2016-06-22 21:28:39'),
(4, 1, 'noticias', 2, 1, '2016-06-22 21:32:14'),
(5, 1, 'noticias', 3, 1, '2016-06-22 21:32:54'),
(6, 1, 'conteudo', 1, 1, '2016-06-22 22:29:34'),
(7, 1, 'menu', 1, 1, '2016-06-22 22:30:02'),
(8, 1, 'menu', 2, 1, '2016-06-22 22:30:16'),
(9, 1, 'menu', 3, 1, '2016-06-22 22:30:31'),
(10, 1, 'menu', 4, 1, '2016-06-22 22:30:50'),
(11, 1, 'menu', 5, 1, '2016-06-22 22:31:07'),
(12, 1, 'menu', 6, 1, '2016-06-22 22:31:18'),
(13, 1, 'banners', 1, 1, '2016-06-23 16:26:46'),
(14, 1, 'banners', 2, 1, '2016-06-23 16:27:05'),
(15, 1, 'catalogo_categorias', 1, 1, '2016-06-24 11:14:58'),
(16, 1, 'catalogo_categorias', 1, 2, '2016-06-24 11:15:12'),
(17, 1, 'catalogo_categorias', 1, 2, '2016-06-24 11:15:17'),
(18, 1, 'catalogo_categorias', 2, 1, '2016-06-24 11:15:30'),
(19, 1, 'catalogo_categorias', 3, 1, '2016-06-24 11:16:09'),
(20, 1, 'catalogo_categorias', 4, 1, '2016-06-24 11:16:19'),
(21, 1, 'catalogo_categorias', 4, 2, '2016-06-24 11:17:20'),
(22, 1, 'catalogo_categorias', 4, 2, '2016-06-24 11:25:55'),
(23, 1, 'catalogo_categorias', 3, 2, '2016-06-24 11:26:01'),
(24, 1, 'catalogo_categorias', 2, 2, '2016-06-24 11:26:06'),
(25, 1, 'catalogo_categorias', 1, 2, '2016-06-24 11:26:11'),
(26, 1, 'depoimentos', 1, 1, '2016-06-24 11:51:30'),
(27, 1, 'depoimentos', 2, 1, '2016-06-24 11:51:44'),
(28, 1, 'depoimentos', 2, 2, '2016-06-24 11:52:08'),
(29, 1, 'depoimentos', 1, 2, '2016-06-24 11:52:14'),
(30, 1, 'depoimentos', 2, 2, '2016-06-24 11:56:30'),
(31, 1, 'depoimentos', 1, 2, '2016-06-24 11:56:36'),
(32, 1, 'depoimentos', 2, 2, '2016-06-24 11:58:13'),
(33, 1, 'depoimentos', 1, 2, '2016-06-24 11:58:19'),
(34, 1, 'conteudo', 2, 1, '2016-06-24 15:01:21'),
(35, 1, 'conteudo', 2, 2, '2016-06-24 15:02:04'),
(36, 1, 'conteudo', 3, 1, '2016-06-24 15:02:32'),
(37, 1, 'conteudo', 4, 1, '2016-06-24 15:03:01'),
(38, 1, 'conteudo', 3, 2, '2016-06-24 15:03:07'),
(39, 1, 'conteudo', 5, 1, '2016-06-24 15:03:31'),
(40, 1, 'clientes', 1, 1, '2016-06-24 17:10:01'),
(41, 1, 'clientes', 2, 1, '2016-06-24 17:10:14'),
(42, 1, 'clientes', 3, 1, '2016-06-24 17:10:37'),
(43, 1, 'clientes', 4, 1, '2016-06-24 17:11:01'),
(44, 1, 'clientes', 5, 1, '2016-06-24 17:11:22'),
(45, 1, 'clientes', 6, 1, '2016-06-24 17:11:48'),
(46, 1, 'clientes', 6, 2, '2016-06-24 17:12:24'),
(47, 1, 'clientes', 7, 1, '2016-06-24 17:12:36'),
(48, 1, 'clientes', 7, 2, '2016-06-24 17:12:54'),
(49, 1, 'clientes', 1, 2, '2016-06-24 17:56:00'),
(50, 1, 'catalogo_produtos', 1, 1, '2016-06-27 14:38:43'),
(51, 1, 'catalogo_produtos', 2, 1, '2016-06-27 14:39:08'),
(52, 1, 'catalogo_produtos', 3, 1, '2016-06-27 14:39:35'),
(53, 1, 'catalogo_produtos', 4, 1, '2016-06-27 14:39:55'),
(54, 1, 'catalogo_produtos', 4, 2, '2016-06-27 14:40:03'),
(55, 1, 'catalogo_produtos', 3, 2, '2016-06-27 14:54:04'),
(56, 1, 'catalogo_produtos', 4, 2, '2016-06-27 14:58:09'),
(57, 1, 'catalogo_produtos', 2, 2, '2016-06-27 14:58:22'),
(58, 1, 'catalogo_produtos', 1, 2, '2016-06-27 14:58:35'),
(59, 1, 'menu', 4, 2, '2016-06-27 21:28:19'),
(60, 1, 'menu', 5, 2, '2016-06-27 21:56:46'),
(61, 1, 'menu', 5, 2, '2016-06-27 22:14:56'),
(62, 1, 'contato', 1, 2, '2016-06-28 15:00:03'),
(63, 1, 'catalogo_produtos', 4, 2, '2016-06-29 20:41:53'),
(64, 1, 'depoimentos', 3, 1, '2016-06-29 21:39:58'),
(65, 1, 'depoimentos', 3, 2, '2016-06-29 21:40:06'),
(66, 1, 'clientes', 7, 2, '2016-07-01 10:32:09'),
(67, 1, 'clientes', 1, 2, '2016-07-01 10:36:26'),
(68, 1, 'clientes', 2, 2, '2016-07-01 10:46:32'),
(69, 1, 'clientes', 3, 2, '2016-07-01 10:59:23'),
(70, 1, 'clientes', 4, 2, '2016-07-01 11:03:49'),
(71, 1, 'clientes', 5, 2, '2016-07-01 11:15:59'),
(72, 1, 'clientes', 6, 2, '2016-07-01 11:19:11'),
(73, 1, 'clientes', 6, 2, '2016-07-01 11:20:16'),
(74, 1, 'clientes', 8, 1, '2016-07-01 11:21:58'),
(75, 1, 'clientes', 8, 2, '2016-07-01 11:25:49'),
(76, 1, 'clientes', 8, 2, '2016-07-01 11:26:07'),
(77, 1, 'clientes', 7, 2, '2016-07-01 11:26:44'),
(78, 1, 'clientes', 1, 2, '2016-07-01 11:26:51'),
(79, 1, 'clientes', 2, 2, '2016-07-01 11:26:59'),
(80, 1, 'clientes', 3, 2, '2016-07-01 11:27:08'),
(81, 1, 'clientes', 4, 2, '2016-07-01 11:27:15'),
(82, 1, 'clientes', 5, 2, '2016-07-01 11:27:21'),
(83, 1, 'clientes', 6, 2, '2016-07-01 11:27:33'),
(84, 1, 'clientes', 9, 1, '2016-07-01 11:36:10'),
(85, 1, 'clientes', 9, 2, '2016-07-01 11:36:23'),
(86, 1, 'clientes', 10, 1, '2016-07-01 11:38:15'),
(87, 1, 'clientes', 10, 2, '2016-07-01 11:38:33'),
(88, 1, 'clientes', 11, 1, '2016-07-01 11:41:29'),
(89, 1, 'clientes', 11, 2, '2016-07-01 11:41:43'),
(90, 1, 'clientes', 12, 1, '2016-07-01 11:44:51'),
(91, 1, 'clientes', 12, 2, '2016-07-01 11:45:15'),
(92, 1, 'clientes', 12, 2, '2016-07-01 11:46:03'),
(93, 1, 'clientes', 13, 1, '2016-07-01 11:50:12'),
(94, 1, 'clientes', 13, 2, '2016-07-01 11:50:25'),
(95, 1, 'conteudo', 6, 1, '2016-07-05 14:50:52'),
(96, 1, 'configuracoes', 1, 2, '2016-07-05 15:30:13'),
(97, 1, 'conteudo', 2, 2, '2016-07-05 15:30:58'),
(98, 1, 'conteudo', 2, 2, '2016-07-05 15:36:26'),
(99, 1, 'conteudo', 2, 2, '2016-07-05 15:43:13'),
(100, 1, 'conteudo', 2, 2, '2016-07-05 15:48:11'),
(101, 1, 'conteudo', 2, 2, '2016-07-05 15:50:55'),
(102, 1, 'conteudo', 2, 2, '2016-07-05 15:56:53'),
(103, 1, 'conteudo', 2, 2, '2016-07-05 15:58:52'),
(104, 1, 'conteudo', 2, 2, '2016-07-05 15:59:33'),
(105, 1, 'conteudo', 2, 2, '2016-07-05 16:00:05'),
(106, 1, 'conteudo', 2, 2, '2016-07-05 16:04:54'),
(107, 1, 'conteudo', 2, 2, '2016-07-05 16:07:35'),
(108, 1, 'conteudo', 2, 2, '2016-07-05 16:12:09'),
(109, 1, 'conteudo', 2, 2, '2016-07-05 16:12:42'),
(110, 1, 'conteudo', 2, 2, '2016-07-05 16:13:21'),
(111, 1, 'conteudo', 2, 2, '2016-07-05 16:13:49'),
(112, 1, 'conteudo', 2, 2, '2016-07-05 16:22:07'),
(113, 1, 'conteudo', 3, 2, '2016-07-05 16:29:19'),
(114, 1, 'conteudo', 3, 2, '2016-07-05 16:29:32'),
(115, 1, 'conteudo', 3, 2, '2016-07-05 16:45:48'),
(116, 1, 'conteudo', 3, 2, '2016-07-05 16:47:27'),
(117, 1, 'conteudo', 3, 2, '2016-07-05 16:48:11'),
(118, 1, 'conteudo', 3, 2, '2016-07-05 16:49:57'),
(119, 1, 'conteudo', 3, 2, '2016-07-05 16:50:48'),
(120, 1, 'conteudo', 3, 2, '2016-07-05 16:51:05'),
(121, 1, 'conteudo', 2, 2, '2016-07-05 16:51:55'),
(122, 1, 'conteudo', 2, 2, '2016-07-05 16:53:06'),
(123, 1, 'conteudo', 2, 2, '2016-07-05 16:53:37'),
(124, 1, 'conteudo', 2, 2, '2016-07-05 16:54:19'),
(125, 1, 'conteudo', 2, 2, '2016-07-05 16:55:44'),
(126, 1, 'conteudo', 2, 2, '2016-07-05 16:56:10'),
(127, 1, 'conteudo', 3, 2, '2016-07-05 16:58:00'),
(128, 1, 'conteudo', 4, 2, '2016-07-05 17:06:05'),
(129, 1, 'conteudo', 4, 2, '2016-07-05 17:10:20'),
(130, 1, 'conteudo', 4, 2, '2016-07-05 17:13:09'),
(131, 1, 'conteudo', 4, 2, '2016-07-05 17:13:39'),
(132, 1, 'conteudo', 4, 2, '2016-07-05 17:14:04'),
(133, 1, 'conteudo', 5, 2, '2016-07-05 17:14:44'),
(134, 1, 'conteudo', 4, 2, '2016-07-05 17:18:45'),
(135, 1, 'conteudo', 4, 2, '2016-07-05 17:21:37'),
(136, 1, 'conteudo', 5, 2, '2016-07-05 17:22:02'),
(137, 1, 'conteudo', 5, 2, '2016-07-05 17:24:36'),
(138, 1, 'conteudo', 5, 2, '2016-07-05 17:25:02'),
(139, 1, 'conteudo', 5, 2, '2016-07-05 17:25:32'),
(140, 1, 'conteudo', 5, 2, '2016-07-05 17:27:40'),
(141, 1, 'conteudo', 5, 2, '2016-07-05 17:27:58'),
(142, 1, 'conteudo', 5, 2, '2016-07-05 17:29:59'),
(143, 1, 'conteudo', 5, 2, '2016-07-05 17:30:24'),
(144, 1, 'conteudo', 5, 2, '2016-07-05 17:33:26'),
(145, 1, 'conteudo', 5, 2, '2016-07-05 17:35:16'),
(146, 1, 'conteudo', 4, 2, '2016-07-05 17:38:20'),
(147, 1, 'conteudo', 5, 2, '2016-07-05 17:39:57'),
(148, 1, 'conteudo', 5, 2, '2016-07-05 17:47:35'),
(149, 1, 'conteudo', 5, 2, '2016-07-05 17:48:26'),
(150, 1, 'conteudo', 4, 2, '2016-07-05 17:50:28'),
(151, 1, 'conteudo', 3, 2, '2016-07-05 17:52:33'),
(152, 1, 'conteudo', 2, 2, '2016-07-05 17:53:02'),
(153, 1, 'clientes', 13, 2, '2016-07-06 08:36:44'),
(154, 1, 'clientes', 12, 2, '2016-07-06 08:36:57'),
(155, 1, 'clientes', 11, 2, '2016-07-06 08:37:08'),
(156, 1, 'clientes', 10, 2, '2016-07-06 08:37:18'),
(157, 1, 'clientes', 9, 2, '2016-07-06 08:38:12'),
(158, 1, 'clientes', 8, 2, '2016-07-06 08:38:26'),
(159, 1, 'clientes', 6, 2, '2016-07-06 08:38:38'),
(160, 1, 'clientes', 5, 2, '2016-07-06 08:39:11'),
(161, 1, 'clientes', 4, 2, '2016-07-06 08:39:18'),
(162, 1, 'clientes', 4, 2, '2016-07-06 08:39:29'),
(163, 1, 'clientes', 3, 2, '2016-07-06 08:39:46'),
(164, 1, 'clientes', 2, 2, '2016-07-06 08:40:09'),
(165, 1, 'clientes', 1, 2, '2016-07-06 08:40:21'),
(166, 1, 'clientes', 7, 2, '2016-07-06 08:40:33'),
(167, 1, 'menu', 7, 1, '2016-07-06 08:46:18'),
(168, 1, 'menu', 4, 3, '2016-07-06 08:46:57'),
(169, 1, 'conteudo', 7, 1, '2016-07-06 08:48:28'),
(170, 1, 'conteudo', 5, 2, '2016-07-06 08:48:55'),
(171, 1, 'conteudo', 2, 2, '2016-07-06 09:01:20'),
(172, 1, 'conteudo', 7, 2, '2016-07-06 09:20:58'),
(173, 1, 'conteudo', 2, 2, '2016-07-06 09:33:19'),
(174, 1, 'conteudo', 7, 2, '2016-07-06 09:33:26'),
(175, 1, 'catalogo_categorias', 4, 2, '2016-07-06 09:47:49'),
(176, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:00:26'),
(177, 1, 'catalogo_categorias', 4, 2, '2016-07-06 10:03:19'),
(178, 1, 'catalogo_categorias', 4, 2, '2016-07-06 10:03:46'),
(179, 1, 'catalogo_categorias', 4, 2, '2016-07-06 10:04:14'),
(180, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:04:41'),
(181, 1, 'catalogo_categorias', 4, 2, '2016-07-06 10:05:06'),
(182, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:05:20'),
(183, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:06:02'),
(184, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:07:40'),
(185, 1, 'catalogo_produtos', 4, 2, '2016-07-06 10:08:36'),
(186, 1, 'catalogo_produtos', 3, 2, '2016-07-06 10:12:53'),
(187, 1, 'catalogo_produtos', 2, 2, '2016-07-06 10:23:35'),
(188, 1, 'catalogo_produtos', 2, 2, '2016-07-06 10:25:23'),
(189, 1, 'catalogo_produtos', 2, 2, '2016-07-06 10:26:11'),
(190, 1, 'catalogo_produtos', 2, 2, '2016-07-06 10:26:36'),
(191, 1, 'catalogo_produtos', 1, 2, '2016-07-06 10:30:22'),
(192, 1, 'catalogo_produtos', 1, 2, '2016-07-06 10:40:36'),
(193, 1, 'catalogo_categorias', 3, 2, '2016-07-06 10:53:06'),
(194, 1, 'catalogo_categorias', 3, 2, '2016-07-06 10:55:52'),
(195, 1, 'catalogo_categorias', 3, 2, '2016-07-06 10:56:34'),
(196, 1, 'menu', 6, 2, '2016-07-06 11:02:48'),
(197, 1, 'catalogo_produtos', 5, 1, '2016-07-06 11:12:48'),
(198, 1, 'catalogo_produtos', 5, 2, '2016-07-06 11:18:46'),
(199, 1, 'catalogo_produtos', 2, 2, '2016-07-06 11:19:20'),
(200, 1, 'catalogo_produtos', 5, 2, '2016-07-06 11:23:28'),
(201, 1, 'catalogo_produtos', 6, 1, '2016-07-06 11:29:30'),
(202, 1, 'catalogo_produtos', 6, 2, '2016-07-06 11:33:27'),
(203, 1, 'catalogo_produtos', 6, 2, '2016-07-06 11:34:24'),
(204, 1, 'conteudo', 4, 2, '2016-07-06 11:40:24'),
(205, 1, 'conteudo', 3, 2, '2016-07-06 11:41:21'),
(206, 1, 'conteudo', 2, 2, '2016-07-06 11:41:37'),
(207, 1, 'conteudo', 5, 2, '2016-07-06 11:41:49'),
(208, 1, 'catalogo_produtos', 7, 1, '2016-07-06 11:51:06'),
(209, 1, 'catalogo_produtos', 7, 2, '2016-07-06 11:51:26'),
(210, 1, 'catalogo_produtos', 7, 2, '2016-07-06 12:03:38'),
(211, 1, 'catalogo_produtos', 5, 2, '2016-07-06 14:17:21'),
(212, 1, 'catalogo_produtos', 8, 1, '2016-07-06 14:25:07'),
(213, 1, 'catalogo_produtos', 8, 2, '2016-07-06 14:25:48'),
(214, 1, 'catalogo_produtos', 8, 2, '2016-07-06 14:32:11'),
(215, 1, 'catalogo_produtos', 8, 2, '2016-07-06 14:33:02'),
(216, 1, 'catalogo_categorias', 1, 2, '2016-07-06 14:38:49'),
(217, 1, 'catalogo_categorias', 1, 2, '2016-07-06 14:40:32'),
(218, 1, 'catalogo_categorias', 1, 2, '2016-07-06 14:41:00'),
(219, 1, 'menu', 8, 1, '2016-07-06 15:04:19'),
(220, 1, 'menu', 9, 1, '2016-07-06 15:09:19'),
(221, 1, 'menu', 10, 1, '2016-07-06 15:11:01'),
(222, 1, 'menu', 11, 1, '2016-07-06 15:13:01'),
(223, 1, 'menu', 12, 1, '2016-07-06 15:15:58'),
(224, 1, 'menu', 13, 1, '2016-07-06 15:16:56'),
(225, 1, 'menu', 14, 1, '2016-07-06 15:18:10'),
(226, 1, 'menu', 15, 1, '2016-07-06 15:18:54'),
(227, 1, 'menu', 16, 1, '2016-07-06 15:19:41'),
(228, 1, 'menu', 17, 1, '2016-07-06 15:21:20'),
(229, 1, 'menu', 18, 1, '2016-07-06 15:22:04'),
(230, 1, 'menu', 19, 1, '2016-07-06 15:22:34'),
(231, 1, 'menu', 20, 1, '2016-07-06 15:23:00'),
(232, 1, 'contato', 1, 2, '2016-07-06 15:25:23'),
(233, 1, 'catalogo_produtos', 9, 1, '2016-07-06 15:30:38'),
(234, 1, 'banners', 3, 1, '2016-07-06 15:50:13'),
(235, 1, 'banners', 3, 3, '2016-07-06 15:51:32'),
(236, 1, 'depoimentos', 4, 1, '2016-07-06 15:55:51'),
(237, 1, 'depoimentos', 4, 2, '2016-07-06 15:56:28'),
(238, 1, 'depoimentos', 4, 2, '2016-07-06 16:02:00'),
(239, 1, 'depoimentos', 2, 3, '2016-07-06 16:02:05'),
(240, 1, 'depoimentos', 5, 1, '2016-07-06 16:06:34'),
(241, 1, 'depoimentos', 1, 3, '2016-07-06 16:06:45'),
(242, 1, 'depoimentos', 5, 2, '2016-07-06 16:07:50'),
(243, 1, 'depoimentos', 3, 3, '2016-07-06 16:09:21'),
(244, 1, 'depoimentos', 6, 1, '2016-07-06 16:10:34'),
(245, 1, 'depoimentos', 6, 2, '2016-07-06 16:13:33'),
(246, 1, 'banners', 4, 1, '2016-07-06 16:15:01'),
(247, 1, 'banners', 1, 3, '2016-07-06 16:15:08'),
(248, 1, 'banners', 2, 3, '2016-07-06 16:15:26'),
(249, 1, 'banners', 4, 3, '2016-07-06 16:15:29'),
(250, 1, 'banners', 5, 1, '2016-07-06 16:16:05'),
(251, 1, 'banners', 6, 1, '2016-07-06 16:16:47'),
(252, 1, 'banners', 7, 1, '2016-07-06 16:17:11'),
(253, 1, 'conteudo', 6, 2, '2016-07-06 16:19:08'),
(254, 1, 'menu', 7, 2, '2016-07-06 16:19:39'),
(255, 1, 'catalogo_produtos', 9, 2, '2016-07-06 16:51:38'),
(256, 1, 'catalogo_produtos', 9, 2, '2016-07-06 16:51:56'),
(257, 1, 'catalogo_produtos', 9, 2, '2016-07-06 16:53:40'),
(258, 1, 'conteudo', 6, 2, '2016-07-06 16:54:28'),
(259, 1, 'conteudo', 6, 2, '2016-07-06 16:55:47'),
(260, 1, 'catalogo_produtos', 9, 2, '2016-07-06 16:56:20'),
(261, 1, 'conteudo', 6, 2, '2016-07-06 16:56:27'),
(262, 1, 'catalogo_categorias', 1, 2, '2016-07-06 17:03:02'),
(263, 1, 'catalogo_categorias', 1, 2, '2016-07-06 17:03:55'),
(264, 1, 'conteudo', 6, 2, '2016-07-06 17:04:02'),
(265, 1, 'conteudo', 6, 2, '2016-07-06 17:05:14'),
(266, 1, 'conteudo', 6, 2, '2016-07-06 17:07:22'),
(267, 1, 'catalogo_categorias', 1, 2, '2016-07-06 17:08:52'),
(268, 1, 'conteudo', 6, 2, '2016-07-06 17:09:12'),
(269, 1, 'catalogo_produtos', 1, 2, '2016-07-06 17:10:52'),
(270, 1, 'menu', 21, 1, '2016-07-06 17:13:16'),
(271, 1, 'menu', 21, 2, '2016-07-06 17:13:25'),
(272, 1, 'conteudo', 5, 2, '2016-07-06 17:14:12'),
(273, 1, 'conteudo', 4, 2, '2016-07-06 17:14:24'),
(274, 1, 'conteudo', 3, 2, '2016-07-06 17:14:36'),
(275, 1, 'conteudo', 2, 2, '2016-07-06 17:14:47'),
(276, 1, 'conteudo', 6, 2, '2016-07-06 17:14:57'),
(277, 1, 'catalogo_categorias', 5, 1, '2016-07-06 17:16:44'),
(278, 1, 'conteudo', 6, 2, '2016-07-06 17:18:05'),
(279, 1, 'catalogo_categorias', 5, 2, '2016-07-06 17:18:57'),
(280, 1, 'conteudo', 6, 2, '2016-07-06 17:20:06'),
(281, 1, 'conteudo', 6, 2, '2016-07-06 17:20:31'),
(282, 1, 'catalogo_produtos', 10, 1, '2016-07-06 17:20:35'),
(283, 1, 'conteudo', 6, 2, '2016-07-06 17:20:54'),
(284, 1, 'catalogo_produtos', 10, 2, '2016-07-06 17:27:19'),
(285, 1, 'catalogo_produtos', 10, 2, '2016-07-06 17:27:50'),
(286, 1, 'catalogo_categorias', 6, 1, '2016-07-06 17:56:36'),
(287, 1, 'catalogo_produtos', 10, 2, '2016-07-06 18:00:12'),
(288, 1, 'catalogo_produtos', 10, 2, '2016-07-06 18:00:20'),
(289, 1, 'catalogo_produtos', 7, 2, '2016-07-06 18:00:42'),
(290, 1, 'catalogo_produtos', 7, 2, '2016-07-06 18:01:05'),
(291, 1, 'catalogo_produtos', 7, 2, '2016-07-06 18:01:16'),
(292, 1, 'catalogo_produtos', 11, 1, '2016-07-06 18:07:22'),
(293, 1, 'menu', 12, 2, '2016-07-07 10:02:14'),
(294, 1, 'menu', 11, 2, '2016-07-07 10:03:01'),
(295, 1, 'menu', 16, 2, '2016-07-07 10:13:16'),
(296, 1, 'catalogo_produtos', 11, 2, '2016-07-07 13:04:16'),
(297, 1, 'catalogo_produtos', 11, 2, '2016-07-07 13:07:06'),
(298, 1, 'catalogo_produtos', 12, 1, '2016-07-07 13:20:29'),
(299, 1, 'catalogo_categorias', 7, 1, '2016-07-07 13:22:22'),
(300, 1, 'catalogo_categorias', 7, 2, '2016-07-07 13:26:58'),
(301, 1, 'catalogo_categorias', 4, 2, '2016-07-07 13:27:37'),
(302, 1, 'catalogo_produtos', 12, 2, '2016-07-07 13:33:03'),
(303, 1, 'catalogo_produtos', 12, 2, '2016-07-07 13:35:47'),
(304, 1, 'catalogo_categorias', 7, 3, '2016-07-07 13:35:55'),
(305, 1, 'catalogo_produtos', 12, 2, '2016-07-07 13:39:07'),
(306, 1, 'catalogo_produtos', 13, 1, '2016-07-07 13:48:07'),
(307, 1, 'catalogo_produtos', 13, 2, '2016-07-07 13:52:06'),
(308, 1, 'catalogo_produtos', 13, 2, '2016-07-07 13:53:58'),
(309, 1, 'catalogo_produtos', 14, 1, '2016-07-07 14:01:24'),
(310, 1, 'catalogo_produtos', 14, 2, '2016-07-07 14:04:46'),
(311, 1, 'catalogo_produtos', 13, 2, '2016-07-07 14:06:31'),
(312, 1, 'catalogo_produtos', 14, 2, '2016-07-07 14:08:09'),
(313, 1, 'catalogo_categorias', 8, 1, '2016-07-07 14:14:22'),
(314, 1, 'catalogo_categorias', 2, 2, '2016-07-07 14:15:28'),
(315, 1, 'catalogo_categorias', 8, 2, '2016-07-07 14:16:45'),
(316, 1, 'catalogo_categorias', 8, 2, '2016-07-07 14:17:31'),
(317, 1, 'catalogo_produtos', 15, 1, '2016-07-07 14:24:10'),
(318, 1, 'catalogo_categorias', 8, 2, '2016-07-07 14:24:21'),
(319, 1, 'catalogo_produtos', 15, 2, '2016-07-07 14:25:37'),
(320, 1, 'catalogo_produtos', 15, 2, '2016-07-07 14:25:56'),
(321, 1, 'catalogo_categorias', 9, 1, '2016-07-07 14:39:40'),
(322, 1, 'catalogo_categorias', 3, 2, '2016-07-07 14:41:30'),
(323, 1, 'catalogo_categorias', 8, 2, '2016-07-07 14:41:58'),
(324, 1, 'catalogo_produtos', 16, 1, '2016-07-07 15:26:37'),
(325, 1, 'catalogo_produtos', 16, 2, '2016-07-07 15:35:25'),
(326, 1, 'catalogo_produtos', 17, 1, '2016-07-07 15:47:01'),
(327, 1, 'catalogo_produtos', 18, 1, '2016-07-07 16:07:55'),
(328, 1, 'catalogo_produtos', 18, 2, '2016-07-07 16:08:10'),
(329, 1, 'catalogo_produtos', 19, 1, '2016-07-07 16:15:50'),
(330, 1, 'catalogo_categorias', 10, 1, '2016-07-07 16:18:05'),
(331, 1, 'catalogo_categorias', 10, 2, '2016-07-07 16:19:34'),
(332, 1, 'catalogo_produtos', 19, 2, '2016-07-07 16:34:27'),
(333, 1, 'catalogo_produtos', 20, 1, '2016-07-07 16:46:43'),
(334, 1, 'catalogo_categorias', 11, 1, '2016-07-07 16:48:06'),
(335, 1, 'catalogo_categorias', 11, 2, '2016-07-07 16:48:35'),
(336, 1, 'conteudo', 5, 2, '2016-07-07 17:00:19'),
(337, 1, 'conteudo', 3, 2, '2016-07-07 17:02:18'),
(338, 1, 'conteudo', 4, 2, '2016-07-07 17:03:22'),
(339, 1, 'conteudo', 2, 2, '2016-07-07 17:07:14'),
(340, 1, 'conteudo', 1, 2, '2016-07-07 17:21:34'),
(341, 1, 'conteudo', 1, 2, '2016-07-07 17:22:05'),
(342, 1, 'menu', 15, 2, '2016-07-07 17:25:14'),
(343, 1, 'menu', 16, 2, '2016-07-07 17:28:09'),
(344, 1, 'menu', 15, 2, '2016-07-07 17:30:09'),
(345, 1, 'menu', 15, 2, '2016-07-07 17:30:44'),
(346, 1, 'menu', 14, 2, '2016-07-07 17:31:21'),
(347, 1, 'menu', 14, 2, '2016-07-07 17:33:10'),
(348, 1, 'menu', 14, 2, '2016-07-07 17:33:19'),
(349, 1, 'menu', 14, 2, '2016-07-07 17:33:53'),
(350, 1, 'menu', 16, 2, '2016-07-07 17:34:52'),
(351, 1, 'catalogo_produtos', 20, 2, '2016-07-07 17:35:19'),
(352, 1, 'menu', 13, 2, '2016-07-07 17:44:01'),
(353, 1, 'menu', 10, 2, '2016-07-07 17:47:21'),
(354, 1, 'menu', 9, 2, '2016-07-07 17:49:32'),
(355, 1, 'menu', 9, 2, '2016-07-07 17:50:12'),
(356, 1, 'menu', 8, 2, '2016-07-07 17:53:16'),
(357, 1, 'banners', 7, 2, '2016-07-07 18:00:58'),
(358, 1, 'banners', 6, 2, '2016-07-07 18:01:34'),
(359, 1, 'menu', 17, 2, '2016-07-07 18:02:25'),
(360, 1, 'conteudo', 2, 2, '2016-07-07 18:02:50'),
(361, 1, 'banners', 5, 2, '2016-07-07 18:03:57'),
(362, 1, 'banners', 5, 2, '2016-07-07 18:05:00'),
(363, 1, 'configuracoes', 1, 2, '2016-07-07 20:42:28'),
(364, 1, 'configuracoes', 1, 2, '2016-07-07 20:44:08'),
(365, 1, 'conteudo', 5, 2, '2016-07-08 10:35:41'),
(366, 1, 'conteudo', 4, 2, '2016-07-08 10:36:28'),
(367, 1, 'conteudo', 3, 2, '2016-07-08 10:36:40'),
(368, 1, 'catalogo_produtos', 7, 2, '2016-07-08 11:23:37'),
(369, 1, 'catalogo_produtos', 7, 2, '2016-07-08 11:24:37'),
(370, 1, 'catalogo_produtos', 8, 2, '2016-07-08 11:25:01'),
(371, 1, 'catalogo_produtos', 6, 2, '2016-07-08 11:51:31'),
(372, 1, 'catalogo_produtos', 7, 2, '2016-07-08 11:51:52'),
(373, 1, 'catalogo_produtos', 6, 2, '2016-07-08 15:09:13'),
(374, 1, 'catalogo_produtos', 6, 2, '2016-07-08 15:13:35'),
(375, 1, 'conteudo', 5, 2, '2016-07-08 15:17:30'),
(376, 1, 'catalogo_produtos', 8, 2, '2016-07-08 15:44:33'),
(377, 1, 'catalogo_produtos', 8, 2, '2016-07-08 15:45:30'),
(378, 1, 'menu', 8, 2, '2016-07-11 17:19:27'),
(379, 1, 'catalogo_produtos', 3, 2, '2016-07-12 08:37:33'),
(380, 1, 'catalogo_produtos', 4, 2, '2016-07-12 08:51:38'),
(381, 1, 'catalogo_produtos', 1, 2, '2016-07-12 09:07:19'),
(382, 1, 'catalogo_produtos', 2, 2, '2016-07-12 09:18:26'),
(383, 1, 'catalogo_produtos', 15, 2, '2016-07-12 09:37:13'),
(384, 1, 'menu', 10, 2, '2016-07-12 09:41:27'),
(385, 1, 'menu', 10, 2, '2016-07-12 09:41:58'),
(386, 1, 'menu', 10, 2, '2016-07-12 09:45:18'),
(387, 1, 'menu', 13, 2, '2016-07-12 09:47:25'),
(388, 1, 'menu', 10, 2, '2016-07-12 09:47:31'),
(389, 1, 'menu', 14, 2, '2016-07-12 09:47:45'),
(390, 1, 'menu', 9, 2, '2016-07-12 09:48:17'),
(391, 1, 'menu', 12, 2, '2016-07-12 09:48:26'),
(392, 1, 'menu', 15, 2, '2016-07-12 09:48:35'),
(393, 1, 'menu', 14, 2, '2016-07-12 09:48:40'),
(394, 1, 'menu', 16, 2, '2016-07-12 09:48:48'),
(395, 1, 'menu', 16, 2, '2016-07-12 09:48:53'),
(396, 1, 'menu', 11, 2, '2016-07-12 09:49:02'),
(397, 1, 'catalogo_produtos', 16, 2, '2016-07-12 09:59:24'),
(398, 1, 'catalogo_produtos', 19, 2, '2016-07-12 10:06:48'),
(399, 1, 'catalogo_produtos', 19, 2, '2016-07-12 14:29:36'),
(400, 1, 'conteudo', 1, 2, '2016-07-12 16:05:58'),
(401, 1, 'catalogo_produtos', 20, 2, '2016-07-13 08:58:02'),
(402, 1, 'catalogo_produtos', 20, 2, '2016-07-13 09:00:06'),
(403, 1, 'catalogo_produtos', 13, 2, '2016-07-13 10:06:18'),
(404, 1, 'catalogo_produtos', 13, 2, '2016-07-13 10:07:39'),
(405, 1, 'catalogo_produtos', 18, 2, '2016-07-13 10:25:42'),
(406, 1, 'catalogo_produtos', 18, 2, '2016-07-13 10:26:45'),
(407, 1, 'catalogo_produtos', 18, 2, '2016-07-13 10:27:09'),
(408, 1, 'catalogo_produtos', 10, 2, '2016-07-13 10:37:00'),
(409, 1, 'catalogo_produtos', 9, 2, '2016-07-13 10:45:36'),
(410, 1, 'clientes', 14, 1, '2016-07-13 14:14:19'),
(411, 1, 'conteudo', 6, 2, '2016-07-13 14:52:24'),
(412, 1, 'catalogo_produtos', 9, 2, '2016-07-13 15:16:23'),
(413, 1, 'catalogo_produtos', 19, 2, '2016-07-13 15:20:25'),
(414, 1, 'catalogo_produtos', 19, 2, '2016-07-13 15:21:31'),
(415, 1, 'catalogo_categorias', 1, 2, '2016-07-13 15:37:43'),
(416, 1, 'catalogo_categorias', 1, 2, '2016-07-13 15:41:46'),
(417, 1, 'catalogo_categorias', 1, 2, '2016-07-13 15:42:13'),
(418, 1, 'catalogo_categorias', 1, 2, '2016-07-13 15:58:16'),
(419, 1, 'catalogo_categorias', 5, 2, '2016-07-13 16:05:22'),
(420, 1, 'noticias', 1, 2, '2016-07-13 16:13:44'),
(421, 1, 'noticias', 2, 3, '2016-07-13 16:13:53'),
(422, 1, 'noticias', 1, 3, '2016-07-13 16:13:57'),
(423, 1, 'noticias', 3, 3, '2016-07-13 16:13:58'),
(424, 1, 'menu', 22, 1, '2016-07-13 16:23:06'),
(425, 1, 'menu', 22, 2, '2016-07-13 16:24:04'),
(426, 1, 'noticias', 4, 1, '2016-07-13 16:46:58'),
(427, 1, 'menu', 2, 2, '2016-07-13 16:52:16'),
(428, 1, 'contato', 1, 2, '2016-07-14 13:18:10'),
(429, 1, 'contato', 1, 2, '2016-07-14 13:22:40'),
(430, 1, 'catalogo_categorias', 4, 2, '2016-07-15 10:04:52'),
(431, 1, 'catalogo_categorias', 10, 2, '2016-07-15 12:08:37'),
(432, 1, 'catalogo_categorias', 11, 2, '2016-07-18 08:29:35'),
(433, 1, 'catalogo_categorias', 11, 2, '2016-07-18 08:30:24'),
(434, 1, 'catalogo_produtos', 9, 2, '2016-07-27 15:09:40'),
(435, 1, 'noticias', 5, 1, '2016-07-27 16:48:22'),
(436, 1, 'noticias', 5, 2, '2016-07-27 16:54:30'),
(437, 1, 'noticias', 5, 2, '2016-07-27 17:10:14'),
(438, 1, 'noticias', 6, 1, '2016-08-31 18:00:10'),
(439, 1, 'noticias', 6, 2, '2016-08-31 18:00:46'),
(440, 1, 'menu', 5, 2, '2016-09-01 09:27:39'),
(441, 1, 'menu', 23, 1, '2016-09-01 09:28:39'),
(442, 1, 'menu', 6, 2, '2016-09-01 09:29:09'),
(443, 1, 'menu', 6, 2, '2016-09-01 09:29:33'),
(444, 1, 'noticias', 6, 2, '2016-09-01 10:21:19'),
(445, 1, 'noticias', 6, 2, '2016-09-01 10:22:31'),
(446, 1, 'contato', 1, 2, '2016-09-05 08:44:07'),
(447, 1, 'contato', 1, 2, '2016-09-05 08:50:20'),
(448, 1, 'catalogo_produtos', 15, 2, '2016-09-12 13:45:47'),
(449, 1, 'catalogo_produtos', 15, 2, '2016-09-12 13:46:17'),
(450, 1, 'catalogo_produtos', 15, 2, '2016-09-12 13:47:10'),
(451, 1, 'noticias', 7, 1, '2016-09-12 15:17:14'),
(452, 1, 'noticias', 6, 2, '2016-09-12 15:17:51'),
(453, 1, 'noticias', 6, 2, '2016-09-12 15:24:38'),
(454, 1, 'noticias', 6, 2, '2016-09-12 15:26:20'),
(455, 1, 'contato', 1, 2, '2016-09-21 08:41:01'),
(456, 1, 'contato', 1, 2, '2016-09-21 08:42:45'),
(457, 1, 'contato', 1, 2, '2016-09-21 08:47:27'),
(458, 1, 'noticias', 7, 2, '2016-09-29 10:42:49'),
(459, 1, 'banners', 7, 2, '2016-10-03 15:24:14'),
(460, 1, 'banners', 6, 2, '2016-10-03 15:24:38'),
(461, 1, 'banners', 5, 2, '2016-10-03 15:24:52'),
(462, 1, 'noticias', 8, 1, '2016-10-05 17:47:04'),
(463, 1, 'noticias', 8, 2, '2016-10-05 17:47:36'),
(464, 1, 'noticias', 8, 2, '2016-10-05 17:48:10'),
(465, 1, 'noticias', 8, 2, '2016-10-05 17:48:46'),
(466, 1, 'noticias', 8, 2, '2016-10-06 09:16:19'),
(467, 1, 'catalogo_produtos', 21, 1, '2016-10-06 10:06:19'),
(468, 1, 'catalogo_produtos', 21, 2, '2016-10-06 10:25:19'),
(469, 1, 'catalogo_produtos', 21, 2, '2016-10-06 10:29:43'),
(470, 1, 'catalogo_produtos', 21, 2, '2016-10-06 11:13:45'),
(471, 1, 'catalogo_produtos', 21, 2, '2016-10-06 11:14:12'),
(472, 1, 'catalogo_produtos', 21, 2, '2016-10-06 11:16:32'),
(473, 1, 'catalogo_produtos', 21, 2, '2016-10-06 11:22:39'),
(474, 1, 'catalogo_produtos', 22, 1, '2016-10-06 15:01:01'),
(475, 1, 'catalogo_produtos', 22, 2, '2016-10-06 15:02:27'),
(476, 1, 'catalogo_produtos', 22, 2, '2016-10-06 15:03:39'),
(477, 1, 'catalogo_produtos', 22, 2, '2016-10-06 15:21:44'),
(478, 1, 'banners', 7, 2, '2016-10-06 16:42:04'),
(479, 1, 'banners', 6, 2, '2016-10-06 16:42:24'),
(480, 1, 'banners', 6, 2, '2016-10-06 16:42:27'),
(481, 1, 'banners', 5, 2, '2016-10-06 16:42:44'),
(482, 1, 'noticias', 9, 1, '2016-10-10 17:27:55'),
(483, 1, 'noticias', 9, 2, '2016-10-10 17:28:23'),
(484, 1, 'noticias', 9, 2, '2016-10-10 17:44:36'),
(485, 1, 'noticias', 10, 1, '2016-10-21 17:25:14'),
(486, 1, 'noticias', 10, 2, '2016-10-21 17:26:31'),
(487, 1, 'noticias', 10, 2, '2016-10-21 17:28:10'),
(488, 1, 'noticias', 10, 2, '2016-10-21 17:28:34'),
(489, 1, 'noticias', 10, 2, '2016-10-21 17:28:59'),
(490, 1, 'noticias', 10, 2, '2016-10-21 17:29:44'),
(491, 1, 'noticias', 11, 1, '2016-11-21 11:05:36'),
(492, 1, 'noticias', 11, 2, '2016-11-21 16:27:45'),
(493, 1, 'noticias', 11, 2, '2016-11-28 12:49:28'),
(494, 1, 'catalogo_produtos', 22, 2, '2016-11-28 13:52:07'),
(495, 1, 'noticias', 12, 1, '2016-11-28 15:41:48'),
(496, 1, 'noticias', 12, 2, '2016-11-28 15:42:17'),
(497, 1, 'noticias', 12, 2, '2016-11-28 15:55:32'),
(498, 1, 'noticias', 12, 2, '2016-11-28 16:03:56'),
(499, 1, 'noticias', 11, 2, '2016-11-28 16:16:19'),
(500, 1, 'noticias', 11, 2, '2016-11-28 16:16:35'),
(501, 1, 'noticias', 12, 2, '2016-12-01 14:54:29'),
(502, 1, 'contato', 1, 2, '2017-01-06 17:17:46'),
(503, 1, 'contato', 1, 2, '2017-01-06 17:19:03'),
(504, 1, 'noticias', 13, 1, '2017-01-18 13:34:56'),
(505, 1, 'categoria_das_noticias', 4, 1, '2017-01-18 13:35:11'),
(506, 1, 'categoria_das_noticias', 5, 1, '2017-01-18 13:35:24'),
(507, 1, 'categoria_das_noticias', 6, 1, '2017-01-18 13:36:02'),
(508, 1, 'categoria_das_noticias', 7, 1, '2017-01-18 13:36:11'),
(509, 1, 'categoria_das_noticias', 8, 1, '2017-01-18 13:36:25'),
(510, 1, 'categoria_das_noticias', 6, 2, '2017-01-18 13:36:54'),
(511, 1, 'categoria_das_noticias', 6, 2, '2017-01-18 13:36:54'),
(512, 1, 'categoria_das_noticias', 5, 2, '2017-01-18 13:36:58'),
(513, 1, 'noticias', 4, 2, '2017-01-18 13:37:19'),
(514, 1, 'noticias', 5, 2, '2017-01-18 13:37:31'),
(515, 1, 'noticias', 6, 2, '2017-01-18 13:41:02'),
(516, 1, 'noticias', 7, 2, '2017-01-18 13:42:30'),
(517, 1, 'categoria_das_noticias', 9, 1, '2017-01-18 13:43:00'),
(518, 1, 'noticias', 8, 2, '2017-01-18 13:43:17'),
(519, 1, 'noticias', 9, 2, '2017-01-18 13:43:27'),
(520, 1, 'noticias', 10, 2, '2017-01-18 13:43:43'),
(521, 1, 'noticias', 11, 2, '2017-01-18 13:44:01'),
(522, 1, 'noticias', 12, 2, '2017-01-18 13:44:12'),
(523, 1, 'noticias', 13, 2, '2017-01-18 13:57:31'),
(524, 1, 'noticias', 13, 2, '2017-01-18 14:01:33'),
(525, 1, 'noticias', 13, 2, '2017-01-18 15:09:40'),
(526, 1, 'conteudo', 4, 2, '2017-01-24 14:15:10'),
(527, 1, 'categoria_das_noticias', 10, 1, '2017-01-25 10:32:32'),
(528, 1, 'noticias', 14, 1, '2017-01-25 11:00:30'),
(529, 1, 'contato', 1, 2, '2017-01-26 11:18:42'),
(530, 1, 'contato', 1, 2, '2017-01-26 16:03:28'),
(531, 1, 'contato', 1, 2, '2017-01-30 09:52:15'),
(532, 1, 'categoria_das_noticias', 11, 1, '2017-02-16 17:31:21'),
(533, 1, 'noticias', 15, 1, '2017-02-16 17:37:59'),
(534, 1, 'noticias', 16, 1, '2017-02-23 14:40:20'),
(535, 1, 'noticias', 14, 2, '2017-03-24 15:09:02'),
(536, 1, 'noticias', 17, 1, '2017-03-28 14:27:41'),
(537, 1, 'noticias', 17, 2, '2017-03-28 14:29:19'),
(538, 1, 'noticias', 18, 1, '2017-03-28 14:36:55'),
(539, 1, 'noticias', 19, 1, '2017-03-28 14:45:02'),
(540, 1, 'noticias', 20, 1, '2017-03-28 14:54:13'),
(541, 1, 'noticias', 21, 1, '2017-04-11 10:05:26'),
(542, 1, 'banners', 6, 2, '2017-04-24 12:44:28'),
(543, 1, 'noticias', 22, 1, '2017-04-25 14:41:12'),
(544, 1, 'noticias', 22, 2, '2017-04-25 14:42:01'),
(545, 1, 'noticias', 23, 2, '2017-04-25 15:00:53'),
(546, 1, 'noticias', 22, 2, '2017-04-26 10:26:31'),
(547, 1, 'noticias', 23, 2, '2017-04-26 10:27:09'),
(548, 1, 'noticias', 23, 2, '2017-04-26 10:28:29'),
(549, 1, 'noticias', 24, 1, '2017-05-10 10:30:51'),
(550, 1, 'noticias', 25, 1, '2017-05-10 10:40:20'),
(551, 1, 'noticias', 26, 1, '2017-05-15 13:43:57'),
(552, 1, 'noticias', 26, 2, '2017-05-15 13:56:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_newsletter`
--

CREATE TABLE `gercont_codemin_newsletter` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_hora` datetime NOT NULL,
  `exportado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_newsletter`
--

INSERT INTO `gercont_codemin_newsletter` (`id`, `nome`, `email`, `data_hora`, `exportado`) VALUES
(1, '0', '0', '2016-06-27 09:13:20', 1),
(2, '', '', '2016-06-28 22:09:45', 1),
(3, 'João da silva', 'rodolfo@webi.com.br', '2016-06-28 22:14:51', 1),
(4, 'João da silva', 'teste@teste.com', '2016-06-28 22:15:00', 1),
(5, 'João da silva', 'clodoaldo@webi.com.br', '2016-06-28 22:18:30', 1),
(6, 'João da silva', 'teste@teste.com.br', '2016-06-28 22:22:16', 1),
(7, 'Junior', 'kzuingame@gmail.com', '2016-06-28 22:24:22', 1),
(8, 'João da silva', 'rodolfo@webi.com', '2016-06-29 14:00:00', 1),
(9, 'junior', 'jrkzuya@gmail.com', '2016-06-29 15:11:10', 0),
(10, 'Gabriel', 'gabi@webi.com.br', '2016-06-29 15:32:23', 0),
(11, 'Clodoaldo Silveira Junior', 'jadna_s0uza@hotmail.com', '2016-06-30 18:47:24', 0),
(12, 'Junior', 'jr@teste.com', '2016-07-01 15:05:42', 0),
(13, 'Marco Piffer', 'marcopiffer5@gmail.com', '2016-09-30 17:09:00', 0),
(14, 'leandro', 'leandrodiogo010@gmil.com', '2016-10-22 10:09:32', 0),
(15, 'João Marcelo ', 'marcello.assism@gmail.com', '2016-10-25 10:32:56', 0),
(16, 'João Marcelo da Silva Lopes ', 'marcellloassis.91@gmail.com', '2016-10-25 10:36:37', 0),
(17, 'Waleson', 'walesonjesussantos@gmail.com', '2016-10-25 23:36:20', 0),
(18, 'Luíz g silva', 'luizgs53@il.com', '2016-10-30 18:28:39', 0),
(19, 'Adailsa gomes silva ', 'izagomessilva@hotmail.com', '2016-10-31 11:29:48', 0),
(20, 'Paola', 'santospaola326@gmail.com', '2016-11-15 18:06:42', 0),
(21, 'Clementina Perfeito ', 'cmperfeito@yahoo.com.br', '2016-11-25 12:03:37', 0),
(22, 'Vera Lucia Casagrande', 'veraluciacasagrande53@gmail.com', '2016-12-07 07:36:23', 0),
(23, 'Jucy', 'Jucyoliveira.jo@gmail.com', '2016-12-20 15:14:52', 0),
(24, 'naiara pereira Rodrigues ', 'naiara104@gmail.com', '2016-12-31 13:12:17', 0),
(25, 'Teste', 'kaka@webi.com.br', '2017-01-03 16:44:35', 0),
(26, 'Renan Caio', 'renancaio2400@gmail.com', '2017-02-01 01:22:17', 0),
(27, 'Lauri da silva', 'lauridasilvasilva@homail.com.br', '2017-02-17 12:01:36', 0),
(28, '', 'varfolomej.petrov@yandex.ua', '2017-02-19 02:09:46', 0),
(29, 'anderson', 'anderson.senna.81@hotmail.com', '2017-04-06 20:43:05', 0),
(30, 'Henrique António Nunes Neto', 'henriques.neto@sonangol.co.ao', '2017-04-13 11:32:16', 0),
(31, 'Nadja Claudia Lopez Vianna', 'nadjacau@ig.com.br', '2017-04-24 11:47:54', 0),
(32, 'Luciano Pereira Vilas Boas', 'projetos.bsdflorianopolis@redebsd.com.br', '2017-05-12 06:07:06', 0),
(33, 'simone', 'cs@webi.com.br', '2017-05-16 14:15:47', 0),
(34, 'Daniel', 'danieledanielfilhho2016@gmail.com', '2017-05-27 12:58:28', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_opcoes`
--

CREATE TABLE `gercont_codemin_opcoes` (
  `id` int(11) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `opcao` varchar(255) NOT NULL,
  `url_opcao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_opcoes_selecionadas`
--

CREATE TABLE `gercont_codemin_opcoes_selecionadas` (
  `id` int(11) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `id_registro` int(11) NOT NULL,
  `id_opcao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_opcoes_selecionadas`
--

INSERT INTO `gercont_codemin_opcoes_selecionadas` (`id`, `tabela`, `campo`, `id_registro`, `id_opcao`) VALUES
(1, 'menu', 'link_conteudo', 1, 1),
(79, 'catalogo_produtos', 'categoria', 5, 3),
(85, 'menu', 'link_conteudo', 7, 6),
(97, 'catalogo_produtos', 'categoria', 11, 6),
(100, 'catalogo_produtos', 'categoria', 12, 6),
(106, 'catalogo_produtos', 'categoria', 14, 6),
(110, 'catalogo_produtos', 'categoria', 17, 9),
(119, 'catalogo_produtos', 'categoria', 7, 3),
(121, 'catalogo_produtos', 'categoria', 6, 3),
(123, 'catalogo_produtos', 'categoria', 8, 3),
(124, 'catalogo_produtos', 'categoria', 3, 4),
(125, 'catalogo_produtos', 'categoria', 4, 4),
(126, 'catalogo_produtos', 'categoria', 1, 4),
(127, 'catalogo_produtos', 'categoria', 2, 4),
(129, 'catalogo_produtos', 'categoria', 16, 9),
(133, 'catalogo_produtos', 'categoria', 20, 11),
(135, 'catalogo_produtos', 'categoria', 13, 6),
(138, 'catalogo_produtos', 'categoria', 18, 9),
(139, 'catalogo_produtos', 'categoria', 10, 5),
(143, 'catalogo_produtos', 'categoria', 19, 10),
(144, 'catalogo_produtos', 'categoria', 9, 1),
(147, 'catalogo_produtos', 'categoria', 15, 8),
(154, 'catalogo_produtos', 'categoria', 21, 4),
(159, 'catalogo_produtos', 'categoria', 22, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_uploads`
--

CREATE TABLE `gercont_codemin_uploads` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `registro` varchar(255) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `arquivo` varchar(255) NOT NULL,
  `legenda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_uploads`
--

INSERT INTO `gercont_codemin_uploads` (`id`, `tipo`, `tabela`, `registro`, `campo`, `arquivo`, `legenda`) VALUES
(18, 'imagem', 'catalogo_produtos', '4', 'imagens', 'portaobasculanteflorianopolis2.png', ''),
(24, 'imagem', 'catalogo_produtos', '5', 'imagens', 'cftvflorianopolis1.png', 'Solução em CFTV é com a Cimtel'),
(25, 'imagem', 'catalogo_produtos', '5', 'imagens', 'cftvflorianopolis2.png', 'Tenha o projeto de segurança certo com a Cimtel'),
(31, 'imagem', 'catalogo_produtos', '11', 'imagens', 'portadeslizanteflorianopolis1.png', 'Portas deslizantes com garantia de qualidade!'),
(32, 'imagem', 'catalogo_produtos', '11', 'imagens', 'portadeslizanteflorianopolis2.png', 'Solução em acesso com segurança!'),
(33, 'imagem', 'catalogo_produtos', '11', 'imagens', 'portadeslizanteflorianopolis3.png', 'Soluções personalizadas com a Cimtel'),
(34, 'imagem', 'catalogo_produtos', '12', 'imagens', 'automacaopivotante.png', 'Solução inteligente e prática!'),
(35, 'imagem', 'catalogo_produtos', '12', 'imagens', 'automacaopivotante2.png', 'Aplicável em portas já existentes!'),
(36, 'imagem', 'catalogo_produtos', '12', 'imagens', 'automacaopivotante3.png', 'Automação pivotante é com a Cimtel'),
(38, 'imagem', 'catalogo_produtos', '14', 'imagens', 'sistemaantipanico2.png', 'Segurança para ambientes com grande fluxo de pessoas'),
(44, 'imagem', 'catalogo_produtos', '3', 'imagens', 'portaodeslizanteflorianopolis2.png', ''),
(45, 'imagem', 'catalogo_produtos', '3', 'imagens', 'portaodeslizanteflorianopolis3.png', ''),
(46, 'imagem', 'catalogo_produtos', '3', 'imagens', 'portaodeslizanteflorianopolis4.png', ''),
(47, 'imagem', 'catalogo_produtos', '3', 'imagens', 'portaodeslizanteflorianopolis5.png', ''),
(48, 'imagem', 'catalogo_produtos', '4', 'imagens', 'portaobasculanteflorianopolis4.png', ''),
(49, 'imagem', 'catalogo_produtos', '4', 'imagens', 'portaobasculanteflorianopolis6.png', ''),
(50, 'imagem', 'catalogo_produtos', '4', 'imagens', 'portaobasculanteflorianopolis7.png', ''),
(51, 'imagem', 'catalogo_produtos', '1', 'imagens', 'portaobasculantetracionamentoduplo3.png', ''),
(52, 'imagem', 'catalogo_produtos', '1', 'imagens', 'portaobasculantetracionamentoduplo4.png', ''),
(53, 'imagem', 'catalogo_produtos', '1', 'imagens', 'portaobasculantetracionamentoduplo5.png', ''),
(54, 'imagem', 'catalogo_produtos', '1', 'imagens', 'portaobasculantetracionamentoduplo6.png', ''),
(55, 'imagem', 'catalogo_produtos', '2', 'imagens', 'portaodeslizanteflorianopoliscorrente1.png', ''),
(56, 'imagem', 'catalogo_produtos', '2', 'imagens', 'portaodeslizanteflorianopoliscorrente2.png', ''),
(57, 'imagem', 'catalogo_produtos', '2', 'imagens', 'portaodeslizanteflorianopoliscorrente3.png', ''),
(58, 'imagem', 'catalogo_produtos', '2', 'imagens', 'portaodeslizanteflorianopoliscorrente4.png', ''),
(59, 'imagem', 'catalogo_produtos', '15', 'imagens', 'cercaeletricaflorianopolis5.png', ''),
(60, 'imagem', 'catalogo_produtos', '15', 'imagens', 'cercaeletricaflorianopolis6.png', ''),
(61, 'imagem', 'catalogo_produtos', '15', 'imagens', 'cercaeletricaflorianopolis7.png', ''),
(62, 'imagem', 'catalogo_produtos', '15', 'imagens', 'cercaeletricaflorianopolis8.png', ''),
(64, 'imagem', 'catalogo_produtos', '21', 'imagens', 'cancelasemflorianopolis2.png', ''),
(65, 'imagem', 'catalogo_produtos', '21', 'imagens', 'cancelasemflorianopolis3.png', ''),
(66, 'imagem', 'catalogo_produtos', '21', 'imagens', 'cancelasautomaticasemflorianopolis.png', ''),
(67, 'imagem', 'catalogo_produtos', '21', 'imagens', 'cancelasautomaticasemflorianopolis2.png', ''),
(68, 'imagem', 'catalogo_produtos', '22', 'imagens', 'fechaduraeletromagneticaemflorianopolis1.png', ''),
(69, 'imagem', 'catalogo_produtos', '22', 'imagens', 'fechaduraeletromagneticaemflorianopolis3.png', ''),
(70, 'imagem', 'catalogo_produtos', '22', 'imagens', 'fechaduraeletromagneticaemflorianopolis2.png', ''),
(71, 'imagem', 'catalogo_produtos', '22', 'imagens', 'fechaduraeletromagneticaemflorianopolis4.png', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_usuarios`
--

CREATE TABLE `gercont_codemin_usuarios` (
  `id` int(1) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `administrador` tinyint(1) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_usuarios`
--

INSERT INTO `gercont_codemin_usuarios` (`id`, `ativo`, `administrador`, `nome`, `login`, `senha`) VALUES
(1, 1, 1, 'webi', 'webi', 'abe351103a3c7efb33421bddeb9c2f08'),
(2, 1, 0, 'Cimtel', 'Cimtel', 'e486956a61e544b4a83feadacd177f07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_usuarios_permissoes`
--

CREATE TABLE `gercont_codemin_usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nivel` int(1) NOT NULL,
  `area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_codemin_usuarios_permissoes`
--

INSERT INTO `gercont_codemin_usuarios_permissoes` (`id`, `id_usuario`, `nivel`, `area`) VALUES
(1, 2, 0, 'conteudo'),
(2, 2, 0, 'menu'),
(3, 2, 0, 'noticias'),
(4, 2, 0, 'categoria_das_noticias'),
(5, 2, 0, 'banners'),
(6, 2, 0, 'depoimentos'),
(7, 2, 1, 'clientes'),
(8, 2, 0, 'configuracoes'),
(9, 2, 0, 'contato'),
(10, 2, 1, 'contatos'),
(11, 2, 0, 'catalogo_produtos'),
(12, 2, 0, 'catalogo_categorias'),
(13, 2, 0, 'catalogo_configuracao'),
(14, 2, 0, 'catalogo_listar_pedidos'),
(15, 2, 0, 'newsletter');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_video`
--

CREATE TABLE `gercont_codemin_video` (
  `id` int(11) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `registro` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_codemin_videos`
--

CREATE TABLE `gercont_codemin_videos` (
  `id` int(11) NOT NULL,
  `tabela` varchar(255) NOT NULL,
  `campo` varchar(255) NOT NULL,
  `registro` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_configuracoes`
--

CREATE TABLE `gercont_configuracoes` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `analytics` varchar(255) NOT NULL,
  `texto_rodape` longtext NOT NULL,
  `publicador` varchar(255) NOT NULL,
  `publicador_link` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twitter` varchar(255) NOT NULL,
  `link_googleplus` varchar(255) NOT NULL,
  `link_instagram` varchar(255) NOT NULL,
  `link_linkedin` varchar(255) NOT NULL,
  `link_youtube` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_configuracoes`
--

INSERT INTO `gercont_configuracoes` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `analytics`, `texto_rodape`, `publicador`, `publicador_link`, `link_facebook`, `link_twitter`, `link_googleplus`, `link_instagram`, `link_linkedin`, `link_youtube`) VALUES
(1, 1, 1, 1, 0, 'Cimtel - Automação e Sistemas de Segurança', 'UA-80287269-1', '', 'Agência Webi', 'https://www.webi.com.br', 'https://www.facebook.com/cimtelsc', '', '', '', 'https://www.linkedin.com/company/cimtel-tecnologia-em-automação', 'https://www.youtube.com/channel/UCEtxVDmSeYgXr3Nf8VYSAkw');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_contato`
--

CREATE TABLE `gercont_contato` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `emails` longtext NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `texto` longtext NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `localizacao` varchar(255) NOT NULL,
  `endereco` longtext NOT NULL,
  `interessado` varchar(100) NOT NULL,
  `anexo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_contato`
--

INSERT INTO `gercont_contato` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `emails`, `titulo`, `texto`, `facebook`, `twitter`, `localizacao`, `endereco`, `interessado`, `anexo`) VALUES
(1, 1, 0, 1, 0, 'marcos@cimtel.com.br,assistencia@cimtel.com.br,vendas@cimtel.com.br,clodoaldo@webi.com.br', 'Contato', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_conteudo`
--

CREATE TABLE `gercont_conteudo` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url_titulo` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `texto` longtext NOT NULL,
  `imagens` tinyint(1) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `capa` varchar(255) NOT NULL,
  `chamada` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_conteudo`
--

INSERT INTO `gercont_conteudo` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `url_titulo`, `keywords`, `description`, `texto`, `imagens`, `tipo`, `capa`, `chamada`) VALUES
(1, 1, 0, 1, 0, 'Empresa', 'empresa', 'automação e segurança, florianópolis', 'Conheça mais sobre a Cimtel, referência em automação e segurança em Florianópolis e região!', '<div id="lipsum">\n<p><img alt="CIMTEL Tecnologia em Automação" src="/ckfinder/userfiles/images/23.png" style="width:100%" /></p>\n\n<p>A CIMTEL Tecnologia em Automa&ccedil;&atilde;o desde 11 de novembro de 1987 atua de forma s&eacute;ria e compromissada no fornecimento de solu&ccedil;&otilde;es inteligentes em <strong>automa&ccedil;&atilde;o e seguran&ccedil;a em Florian&oacute;polis e regi&atilde;o</strong>.</p>\n\n<p>Atuando inicialmente na venda, montagem, instala&ccedil;&atilde;o e manuten&ccedil;&atilde;o de sistemas de alarme contra roubo, residenciais, comerciais e industriais, consolidou seu nome no mercado com base na &eacute;tica profissional e na qualidade dos produtos e servi&ccedil;os oferecidos.<br />\n&nbsp;<br />\nCom o decorrer do tempo e com a necessidade de novas tecnologias e solu&ccedil;&otilde;es, a empresa foi incorporando outros produtos e servi&ccedil;os, e hoje al&eacute;m dos sistemas de alarme contra roubo, atua tamb&eacute;m na venda, montagem, instala&ccedil;&atilde;o e manuten&ccedil;&atilde;o de automa&ccedil;&atilde;o de port&otilde;es, circuito fechado de tv, porteiros eletr&ocirc;nicos coletivos e residenciais, controles de acesso e contrato de assist&ecirc;ncia t&eacute;cnica com atendimento 24 horas, objetivando levar aos seus clientes solu&ccedil;&otilde;es em automa&ccedil;&atilde;o e seguran&ccedil;a eletr&ocirc;nica.</p>\n\n<p><img alt="" src="/ckfinder/userfiles/images/cimtel-florianopolis.png" style="width:100%" /></p>\n\n<p><strong>MISS&Atilde;O</strong><br />\nOferecer produtos e servi&ccedil;os de qualidade, proporcionando aos seus clientes uma vida mais f&aacute;cil, melhor e mais segura, em um ambiente que atenda as expectativas de seus colaboradores e investidores.</p>\n\n<p><strong>VIS&Atilde;O</strong><br />\nSer reconhecida como a melhor empresa do ramo no Estado de Santa Catarina.</p>\n\n<p><strong>VALORES</strong></p>\n\n<p>1- Valorizar as pessoas</p>\n\n<p>2- Promover valores &eacute;ticos e morais</p>\n\n<p>3- Atuar com profissionalismo e transpar&ecirc;ncia&nbsp;</p>\n\n<p>4- Incentivar pr&aacute;ticas de cidadania e responsabilidade social</p>\n\n<p>5- Atender as expectativas de seus clientes, colaboradores e investidores.</p>\n</div>\n', 0, 0, '', ''),
(2, 1, 0, 1, 0, 'Assistência 24h', 'assistencia-24h', '', 'Assistência para o sistema de segurança de seu condomínio, casa ou empresa é com a Cimtel!', '<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>SUA SEGURAN&Ccedil;A CHECADA 24 HORAS</h3>\n\n<p>O Contrato de Assist&ecirc;ncia T&eacute;cnica &eacute; uma exclusividade da CIMTEL para deixar sua vida mais f&aacute;cil e segura. A qualquer hora do dia ou da noite, nossa equipe est&aacute; &agrave; disposi&ccedil;&atilde;o para lhe atender com toda a agilidade poss&iacute;vel. Al&eacute;m de voc&ecirc; poder fazer um planejamento das despesas, de acordo com suas necessidades, a manuten&ccedil;&atilde;o constante proporciona maior vida &uacute;til aos equipamentos.Todas essas vantagens e a facilidade de pagamento fazem da CIMTEL a empresa com a melhor estrutura e custo-benef&iacute;cio do mercado. Confira mais vantagens do nosso Contrato de Assist&ecirc;ncia T&eacute;cnica, pois certamente uma delas ser&aacute; perfeita para o seu condom&iacute;nio ou empresa.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><a href="/ckfinder/userfiles/files/segurança-24horas-florianopolis(1).png"><img alt="" src="/ckfinder/userfiles/images/seguran%C3%A7a-24horas-florianopolis.png" style="width:100%" /></a></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/manutencao-cftv.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>MANUTEN&Ccedil;&Atilde;O PREVENTIVA MENSAL</h3>\n\n<p>M&ecirc;s a m&ecirc;s, seus equipamentos s&atilde;o revisados para detectar poss&iacute;veis problemas futuros. Isso garante o seu conforto e assegura que as falhas possam ser corrigidas antes que prejudiquem sua seguran&ccedil;a.</p>\n\n<p>A manuten&ccedil;&atilde;o preventiva prolonga a vida &uacute;til dos equipamentos, evitando inc&ocirc;modos posteriores. Voc&ecirc; ainda recebe um relat&oacute;rio mensal dos servi&ccedil;os realizados, para acompanhar o trabalho da CIMTEL.</p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>MANUTEN&Ccedil;&Atilde;O CORRETIVA 24 HORAS</h3>\n\n<p>Caso aconte&ccedil;a algum imprevisto com seus equipamentos, estaremos de prontid&atilde;o para solucionar o que for preciso. Nossa equipe &eacute; composta por t&eacute;cnicos especializados, que analisam a situa&ccedil;&atilde;o de acordo com suas necessidades. E voc&ecirc; ainda tem atendimento preferencial. Entre em contato conosco, estamos inteiramente &agrave; sua disposi&ccedil;&atilde;o, para zelar pelo seu bem-estar e seguran&ccedil;a.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominial.png" style="width:100%" /></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/cobertura-equipamentos-seguranca.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>COBERTURA COMPLETA</h3>\n\n<p>Todos os seus equipamentos recebem a devida aten&ccedil;&atilde;o da CIMTEL, sempre que for preciso. Isso faz do Contrato de Assist&ecirc;ncia T&eacute;cnica algo indispens&aacute;vel &agrave; seguran&ccedil;a da sua empresa ou do seu condom&iacute;nio. A CIMTEL se preocupa em sempre superar suas expectativas, evitando inc&ocirc;modos e trazendo conforto. Como resultado, ela traz tranq&uuml;ilidade &agrave; sua vida, porque voc&ecirc; sabe que est&aacute; bem protegido. S&oacute; a CIMTEL tem tanto cuidado com seu pessoal e seus bens.</p>\n</div>\n\n<div class="clear" style="text-align: center;">&nbsp;</div>\n\n<div class="col-sm-12 col-md-12">\n<h3 style="text-align:center">EQUIPAMENTOS ATENDIDOS</h3>\n\n<div class="clear" style="text-align: center;">&gt; Sistemas de automa&ccedil;&atilde;o de port&otilde;es</div>\n\n<div class="clear" style="text-align: center;">&gt; Portas Autom&aacute;ticas<br />\n&gt; Sistemas de comunica&ccedil;&atilde;o e porteiros eletr&ocirc;nicos<br />\n&gt; Circuito fechado de TV<br />\n&gt; Controles de acesso<br />\n&gt; Alarme de inc&ecirc;ndio<br />\n&gt; Luz de emerg&ecirc;ncia<br />\n&gt; Sensores de controle de ilumina&ccedil;&atilde;o<br />\n&gt; Cercas eletr&ocirc;nicas<br />\n&gt; Sistemas de alarme contra roubo, entre outros</div>\n\n<div class="clear" style="text-align: center;">&nbsp;</div>\n\n<div class="clear" style="text-align: center;">&nbsp;</div>\n</div>\n</div>\n', 0, 1, 'assistencia-24horas-seguranca-florianopolis.png', 'Atendimento completo a qualquer hora do dia'),
(3, 1, 0, 1, 0, 'Manutenção Preventiva', 'manutencao-preventiva', '', '', '<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>PREVEN&Ccedil;&Atilde;O</h3>\n\n<p>Al&eacute;m do sistema de contrato de assist&ecirc;ncia t&eacute;cnica, a CIMTEL possui ainda o servi&ccedil;o de manuten&ccedil;&atilde;o preventiva avulsa. O objetivo deste servi&ccedil;o &eacute; atender resid&ecirc;ncias, com&eacute;rcio e industria, al&eacute;m de pequenos condom&iacute;nios que optam&nbsp;por n&atilde;o ter um v&iacute;nculo atrav&eacute;s do contrato de assist&ecirc;ncia t&eacute;cnica. Seus equipamentos s&atilde;o revisados para detectar poss&iacute;veis problemas atuais e futuros.&nbsp;Isso garante o seu conforto e assegura que as falhas possam ser corrigidas antes que prejudiquem sua seguran&ccedil;a. A manuten&ccedil;&atilde;o preventiva prolonga a vida &uacute;til dos equipamentos, evitando inc&ocirc;modos posteriores. Voc&ecirc; ainda recebe um relat&oacute;rio dos servi&ccedil;os realizados, para acompanhar o trabalho da CIMTEL.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><a href="/ckfinder/userfiles/files/segurança-24horas-florianopolis(1).png"><img alt="" src="/ckfinder/userfiles/images/manutencao-cftv(2).png" style="width:100%" /></a></p>\n</div>\n</div>\n\n<h3 style="text-align:center">EQUIPAMENTOS ATENDIDOS</h3>\n\n<p style="text-align:center">&gt; Sistemas de automa&ccedil;&atilde;o de port&otilde;es<br />\n&gt; Portas Autom&aacute;ticas<br />\n&gt; Sistemas de comunica&ccedil;&atilde;o e porteiros eletr&ocirc;nicos<br />\n&gt; Circuito fechado de TV<br />\n&gt; Controles de acesso<br />\n&gt; Alarme de inc&ecirc;ndio<br />\n&gt; Luz de emerg&ecirc;ncia<br />\n&gt; Sensores de controle de ilumina&ccedil;&atilde;o<br />\n&gt; Cercas eletr&ocirc;nicas<br />\n&gt; Sistemas de alarme contra roubo, entre outros</p>\n\n<p style="text-align:center">&nbsp;</p>\n\n<p>Entre em contato conosco, estamos &agrave; sua disposi&ccedil;&atilde;o, para zelar pelo seu bem-estar e pela seguran&ccedil;a de sua fam&iacute;lia e do seu empreendimento.</p>\n', 0, 1, 'manutencao-preventivo-seguranca-florianopolis.png', 'Controle e antecipação de eventuais necessidades de troca'),
(4, 1, 0, 1, 0, 'Manutenção Corretiva', 'manutencao-corretiva', '', '', '<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>QUEBROU? N&Oacute;S CONSERTAMOS</h3>\n\n<p>A l&oacute;gica da ger&ecirc;ncia em manuten&ccedil;&atilde;o corretiva &eacute; simples e direta: quando uma m&aacute;quina quebra, conserte-a. Este m&eacute;todo (&ldquo;se n&atilde;o est&aacute; quebrada, n&atilde;o conserte&rdquo;) de manuten&ccedil;&atilde;o de equipamentos eletroeletr&ocirc;nicos e mec&acirc;nicos tem representado uma grande parte das opera&ccedil;&otilde;es de manuten&ccedil;&atilde;o de diversos empreendimentos. Principalmente resid&ecirc;ncias, com&eacute;rcio e ind&uacute;stria, al&eacute;m de pequenos condom&iacute;nios.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><a href="/ckfinder/userfiles/files/segurança-24horas-florianopolis(1).png"><img alt="" src="/ckfinder/userfiles/images/seguran%C3%A7a-24horas-florianopolis.png" style="width:100%" /></a></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/manutencao-cftv.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>GER&Ecirc;NCIA REATIVA</h3>\n\n<p>A manuten&ccedil;&atilde;o corretiva &eacute; uma t&eacute;cnica de ger&ecirc;ncia reativa que espera pela falha de equipamentos, antes que seja tomada qualquer a&ccedil;&atilde;o de manuten&ccedil;&atilde;o. Po isso pode tamb&eacute;m ser considerado, em alguns casos, um dos m&eacute;todos mais caros de ger&ecirc;ncia de manuten&ccedil;&atilde;o.&nbsp;</p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>SERVI&Ccedil;O AVULSO</h3>\n\n<p>Voltado a este mercado e em respeito a liberdade de escolha de nossos clientes, a CIMTEL possui uma estrutura para atender adequadamente as necessidades de manuten&ccedil;&atilde;o corretiva para os clientes que optam por n&atilde;o ter um v&iacute;nculo atrav&eacute;s do contrato de assist&ecirc;ncia t&eacute;cnica.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominial.png" style="width:100%" /></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/cobertura-equipamentos-seguranca.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>HOR&Aacute;RIO E EQUIPE</h3>\n\n<p>Os atendimentos ocorrem no hor&aacute;rio comercial, de segunda a sexta-feira, e caso aconte&ccedil;a algum imprevisto com seus equipamentos, estaremos de prontid&atilde;o para solucionar o que for preciso. Nossa equipe &eacute; composta por t&eacute;cnicos especializados, que analisam a situa&ccedil;&atilde;o de acordo com suas necessidades.&nbsp;Entre em contato conosco, estamos &agrave; sua disposi&ccedil;&atilde;o, para zelar pelo seu bem-estar e pela seguran&ccedil;a de sua fam&iacute;lia e do seu empreendimento.</p>\n</div>\n\n<div class="clear" style="text-align: center;">\n<h3 style="text-align:center">&nbsp;</h3>\n\n<h3 style="text-align:center">EQUIPAMENTOS ATENDIDOS</h3>\n\n<p style="text-align:center">&gt; Sistemas de automa&ccedil;&atilde;o de port&otilde;es<br />\n&gt; Portas Autom&aacute;ticas<br />\n&gt; Sistemas de comunica&ccedil;&atilde;o e porteiros eletr&ocirc;nicos<br />\n&gt; Circuito fechado de TV<br />\n&gt; Controles de acesso<br />\n&gt; Alarme de inc&ecirc;ndio<br />\n&gt; Luz de emerg&ecirc;ncia<br />\n&gt; Sensores de controle de ilumina&ccedil;&atilde;o<br />\n&gt; Cercas eletr&ocirc;nicas<br />\n&gt; Sistemas de alarme contra roubo, entre outros</p>\n</div>\n</div>\n', 0, 1, 'manutencao-corretiva-seguranca-florianopolis.png', 'Gerência reativa. Troque apenas quando necessário'),
(5, 1, 0, 1, 0, 'Consultoria Técnica', 'consultoria-tecnica', 'consultoria em segurança, sistema de segurança florianópolis', 'Consultoria em segurança para Florianópolis e região é com a Cimtel.  Confira!', '<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>SOLU&Ccedil;&Otilde;ES X NECESSIDADES</h3>\n\n<p>O sistema de consultoria t&eacute;cnica CIMTEL &eacute; mais um servi&ccedil;o disponibilizado para deixar sua vida mais f&aacute;cil e segura.&nbsp;O objetivo principal deste servi&ccedil;o &eacute; fornecer ao cliente a garantia de que os investimentos supram integralmente as necessidades que envolvam tecnologia, seguran&ccedil;a, controle, funcionalidade, durabilidade, atendimento p&oacute;s-venda e p&oacute;s-instala&ccedil;&atilde;o, na certeza de que todo investimento traga resultados imediatos, de m&eacute;dio e de longo prazo, oferecendo o melhor custo em fun&ccedil;&atilde;o do melhor e mais abrangente benef&iacute;cio.&nbsp;</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><a href="/ckfinder/userfiles/files/segurança-24horas-florianopolis(1).png"><img alt="" src="/ckfinder/userfiles/images/seguran%C3%A7a-24horas-florianopolis.png" style="width:100%" /></a></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/manutencao-cftv.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<p>&nbsp;</p>\n\n<p>&gt; Defini&ccedil;&atilde;o da abrang&ecirc;ncia do projeto de seguran&ccedil;a do Empreendimento, como por exemplo: analise de possibilidade de roubos, furtos, vandalismos, controle de fluxo de pedestres e ve&iacute;culos, localiza&ccedil;&atilde;o e cobertura inicial dos equipamentos, entre outros.</p>\n\n<p>&gt; An&aacute;lise completa do empreendimento, verificando os pontos vulner&aacute;veis, as possibilidades de implanta&ccedil;&atilde;o de rotinas, a possibilidade de implanta&ccedil;&atilde;o de tecnologias de detec&ccedil;&atilde;o e controle com suas respectivas estruturas de implanta&ccedil;&atilde;o e funcionamento. Trabalho que &eacute; desenvolvido com o acompanhamento constante do cliente, sempre procurando adequar o projeto as particularidades do empreendimento.&nbsp;</p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-8">\n<p>&nbsp;</p>\n\n<p>&gt; A especifica&ccedil;&atilde;o t&eacute;cnica de todos os equipamentos necess&aacute;rios na nova estrutura (exemplo: cftv, controle de acesso, alarmes, cercas eletr&ocirc;nicas, grades, automa&ccedil;&otilde;es, porteiros eletr&ocirc;nicos, telas), ou seja, tudo que for definido juntamente com o cliente para aplica&ccedil;&atilde;o. Juntamente com as especifica&ccedil;&otilde;es t&eacute;cnicas a CIMTEL apresentar&aacute; o plano de implanta&ccedil;&atilde;o, incluindo toda infra-estrutura necess&aacute;ria, com um esquema completo de apresenta&ccedil;&atilde;o visual que inclui fotos do local, desenhos, medidas, loca&ccedil;&atilde;o de equipamentos, tubula&ccedil;&otilde;es, acess&oacute;rios e cabeamentos.&nbsp;</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominial.png" style="width:100%" /></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/cobertura-equipamentos-seguranca.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>&nbsp;</h3>\n\n<p>&gt; Com projeto de seguran&ccedil;a e controle pronto, a CIMTEL apresentar&aacute; ainda as propostas comerciais para fornecimento dos equipamentos, insumos, infra-estrutura e m&atilde;o de obra necess&aacute;ria para implanta&ccedil;&atilde;o completa do novo sistema de seguran&ccedil;a e controle.</p>\n</div>\n\n<div class="clear" style="text-align: center;">&nbsp;</div>\n\n<div class="col-sm-12 col-md-12">\n<h3 style="text-align:center">RELAT&Oacute;RIO DE SEGURAN&Ccedil;A</h3>\n\n<div class="clear" style="text-align: center;">&gt; Levantamento dos problemas e necessidades do empreendimento.<br />\n&gt; Apresenta&ccedil;&atilde;o das solu&ccedil;&otilde;es estruturais, conjunturais e t&eacute;cnicas.<br />\n&gt; Especifica&ccedil;&otilde;es dos equipamentos propostos para as solu&ccedil;&otilde;es.<br />\n&gt; Memorial descritivo dos materiais a serem utilizados (equipamentos e insumos).<br />\n&gt;&nbsp;Plano de implanta&ccedil;&atilde;o, com esquema visual de fotos, desenhos, croquis e outros.<br />\n&gt; Apresenta&ccedil;&atilde;o das propostas CIMTEL para execu&ccedil;&atilde;o da obra.<br />\n&gt; M&iacute;dia contendo o relat&oacute;rio e todas as fotos, desenhos e croquis apresentados no relat&oacute;rio impresso.</div>\n\n<div class="clear" style="text-align: center;">&nbsp;</div>\n\n<div class="clear" style="text-align: center;">\n<h3 style="text-align:center">EQUIPAMENTOS ATENDIDOS</h3>\n\n<p style="text-align:center">&gt; Sistemas de automa&ccedil;&atilde;o de port&otilde;es<br />\n&gt; Portas Autom&aacute;ticas<br />\n&gt; Sistemas de comunica&ccedil;&atilde;o e porteiros eletr&ocirc;nicos<br />\n&gt; Circuito fechado de TV<br />\n&gt; Controles de acesso<br />\n&gt; Alarme de inc&ecirc;ndio<br />\n&gt; Luz de emerg&ecirc;ncia<br />\n&gt; Sensores de controle de ilumina&ccedil;&atilde;o<br />\n&gt; Cercas eletr&ocirc;nicas<br />\n&gt; Sistemas de alarme contra roubo, entre outros</p>\n</div>\n</div>\n</div>\n', 0, 1, 'consultoria-tecnica-seguranca-florianopolis.png', 'Verifique e atenda todas as demandas de segurança'),
(6, 1, 0, 1, 0, 'Clientes', 'clientes', '', '', '<h2 style="text-align:center"><strong>CONHE&Ccedil;A NOSSOS CLIENTES</strong></h2>\n\n<p>&nbsp;</p>\n\n<table align="center" border="0" cellpadding="1" cellspacing="1" class="alinharImage" style="width:100%">\n	<tbody>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/aemflo(1).png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/cdl.png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/linea.png" style="height:150px; width:250px" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/vvoa.png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/true%20it.png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/PEDRA%20BRANCA.png" style="height:150px; width:250px" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/msi.png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="" src="/ckfinder/userfiles/images/jurere.png" style="height:150px; width:250px" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="COTA" src="/ckfinder/userfiles/images/Cota.png" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Eletrosul" src="/ckfinder/userfiles/images/Eletrosul.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Infraero" src="/ckfinder/userfiles/images/Infraero.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Casvig" src="/ckfinder/userfiles/images/casvig.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Justiça Federal" src="/ckfinder/userfiles/images/Justi%C3%A7a-Federal.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Koerich" src="/ckfinder/userfiles/images/Koerich.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Koprime" src="/ckfinder/userfiles/images/koprime.png" style="line-height:20.8px; text-align:center" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Lumis" src="/ckfinder/userfiles/images/lumis-logo.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Magno Martins" src="/ckfinder/userfiles/images/Magno-Martins.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Orion" src="/ckfinder/userfiles/images/Orion.png" style="line-height:20.8px; text-align:center" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Prefeitura de Florianópolis" src="/ckfinder/userfiles/images/Prefeitura.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Procuradoria Geral do Estado - SC" src="/ckfinder/userfiles/images/Santa%20catarina.png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Tractebel Energia" src="/ckfinder/userfiles/images/tractebel(2).png" style="line-height:20.8px; text-align:center" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Villes de France" src="/ckfinder/userfiles/images/Ville(1).png" /></p>\n			</td>\n			<td style="text-align:center">\n			<p><img alt="ARGUS" src="/ckfinder/userfiles/images/ARGUS(1).png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n\n			<p>&nbsp;</p>\n			</td>\n			<td style="text-align:center">\n			<p><img alt="Assembleia Legislativa" src="/ckfinder/userfiles/images/assembleia-legislativa.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align="center" border="0" cellpadding="1" cellspacing="1" class="alinharImage" style="width:100%">\n	<tbody>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Builder" src="/ckfinder/userfiles/images/builder.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Condomínio Solar da Colina" src="/ckfinder/userfiles/images/Cond_-Solar-da-Colina.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Itambé" src="/ckfinder/userfiles/images/ITAMB%C3%89.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Costão do Santinho" src="/ckfinder/userfiles/images/Costao-do-Santinho.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="CIASC" src="/ckfinder/userfiles/images/ciasc.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n			<td style="text-align:center">\n			<p>&nbsp;</p>\n\n			<p><img alt="Colégio Catarinense" src="/ckfinder/userfiles/images/Colegio-catarinense.png" style="line-height:20.8px; opacity:0.9; text-align:center" /></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', 0, 0, '', ''),
(7, 1, 0, 1, 0, 'Automação de Portões', 'automacao-de-portoes', '', 'Portões basculantes, portões deslizantes e toda solução que você precisa em automação de portões você encontra na Cimtel. Confira!', '<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>PORT&Atilde;O BASCULANTE</h3>\n\n<p>Automa&ccedil;&otilde;es para port&otilde;es basculantes, planejadas conforme o tamanho, peso e fluxo, garantindo qualidade de funcionamento, durabilidade e f&aacute;cil acesso para resid&ecirc;ncias, condom&iacute;nios e empresas.&nbsp;</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><a href="/ckfinder/userfiles/files/segurança-24horas-florianopolis(1).png"><img alt="" src="/ckfinder/userfiles/images/portao-basculante-florianopolis(2).png" style="width:100%" /></a></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/portao-deslizante.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>PORT&Atilde;O DESLIZANTE</h3>\n\n<p>Automa&ccedil;&otilde;es para port&otilde;es deslizantes, planejadas conforme o tamanho, peso e fluxo, garantindo qualidade de funcionamento, durabilidade e f&aacute;cil acesso para resid&ecirc;ncias, condom&iacute;nios e empresas.</p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-8">\n<h3>PORT&Atilde;O DESLIZANTE POR CORRENTE</h3>\n\n<p>M&aacute;quinas deslizantes tracionadas por corrente. Uma exclusividade CIMTEL que garante resist&ecirc;ncia e durabilidade para aplica&ccedil;&otilde;es especiais, alto fluxo e grande port&otilde;es, por exemplo.</p>\n</div>\n\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/portao-corrente.png" style="width:100%" /></p>\n</div>\n</div>\n\n<div class="row">\n<div class="col-sm-12 col-md-4">\n<p><img alt="" src="/ckfinder/userfiles/images/portao-basculante-tracionamento-duplo.png" style="width:100%" /></p>\n</div>\n\n<div class="col-sm-12 col-md-8">\n<h3>PORT&Atilde;O BASCULANTE COM TRACIONAMENTO DUPLO</h3>\n\n<p>Solu&ccedil;&atilde;o ideal para port&otilde;es basculantes de alto fluxo, grandes, articulados, ou ainda de aplica&ccedil;&otilde;es especiais.</p>\n</div>\n</div>\n', 0, 0, '', 'Portões basculantes, portões deslizantes e toda solução que você precisa em automação de portões você encontra na Cimtel!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_depoimentos`
--

CREATE TABLE `gercont_depoimentos` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `depoimento` longtext NOT NULL,
  `nome` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `capa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_depoimentos`
--

INSERT INTO `gercont_depoimentos` (`id`, `ativo`, `ordenar`, `id_usuario`, `depoimento`, `nome`, `foto`, `capa`) VALUES
(1, 2, 3, 1, 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado.', 'Thirta Ray', 'banner-usuario-senha2.png', 'banner-usuario-senha3.png'),
(2, 2, 2, 1, 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado.', 'Gabriel Chagas', 'banner-usuario-senha2.png', 'banner-usuario-senha3.png'),
(3, 2, 2, 1, 'Uma excelência em sistemas de segurança.', 'Junior', '', 'images.jpg'),
(4, 1, 1, 1, '“A reformulação de nossos sistemas de segurança eletrônica nos permitiu um ganho nos controles e mobilidade para a gestão dos sistemas. Com apoio da equipe Cimtel hoje temos acessos controlados e registrados com avisos por e-mail e monitoramento em tempo real dos acontecimentos. ”', 'Lúcio Flávio da Cruz - Diretor', '', 'msi.png'),
(5, 1, 0, 1, '“A CIMTEL tem um contrato de manutenção com o Condomínio Orlando Becker desde 2000, sempre com uma atuação séria, ética, eficiente e comprometida com o cliente. Por tudo isso a CIMTEL tem papel fundamental no fornecimento e manutenção dos equipamentos de segurança eletrônica do condomínio, uma parceria longa e com excelentes resultados.”', 'Sr. Pedro Becker – Síndico', '', 'condomínio.jpg'),
(6, 1, 0, 1, '"Meu nome é Neide Carvalho sou sindica no Residencial Linea com 326 Unidades, recomendo o trabalho da CIMTEL, eles têm a equipe mais competente do mercado, são honestos nas suas avaliações, cumpridores de prazos, e posicionam o tempo todo do andamento dos trabalhos. As soluções apresentada pela CIMTEL atenderam plenamente os objetivos do condomínio, e ainda mais, temos eles hoje como parceiros para manutenção de todo o sistema do nosso condomínio. Confiança e pontualidade resumem as palavras de ordem para a CIMTEL. Obrigada pela parceria."\n \n\n ', 'Neide Carvalho - Síndica', '', 'residencial_linea.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_galerias_fotos`
--

CREATE TABLE `gercont_galerias_fotos` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `url_nome` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `chamada` longtext NOT NULL,
  `texto` longtext NOT NULL,
  `imagens` tinyint(1) DEFAULT NULL,
  `capa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_images_config`
--

CREATE TABLE `gercont_images_config` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `largura` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `altura` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `json_pages` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_menu`
--

CREATE TABLE `gercont_menu` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url_titulo` varchar(255) NOT NULL,
  `menu_pai` int(11) NOT NULL,
  `funcao` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_conteudo` tinyint(1) DEFAULT NULL,
  `link_gercont` tinyint(1) DEFAULT NULL,
  `abrir` int(11) NOT NULL,
  `link_manual` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_menu`
--

INSERT INTO `gercont_menu` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `url_titulo`, `menu_pai`, `funcao`, `link`, `link_conteudo`, `link_gercont`, `abrir`, `link_manual`) VALUES
(1, 1, 15, 1, 0, 'Empresa', 'empresa', 0, 1, '', NULL, 0, 0, ''),
(2, 1, 17, 1, 0, 'Catálogo', 'catalogo', 0, 2, '', 0, 1, 0, ''),
(3, 1, 16, 1, 0, 'Serviços', 'servicos', 0, 0, '', NULL, 0, 0, './servicos'),
(4, 2, 4, 1, 0, 'Clientes', 'clientes', 0, 0, '', 0, 0, 0, './clientes'),
(5, 1, 21, 1, 0, 'Trabalhe Conosco', 'trabalhe-conosco', 6, 0, '', 0, 0, 0, './trabalhe-conosco'),
(6, 1, 20, 1, 0, 'Contato', 'contato', 0, 0, '', 0, 2, 0, 'javascript:void(0)'),
(7, 1, 18, 1, 0, 'Clientes', 'clientes-1', 0, 1, '', 0, 0, 0, ''),
(8, 1, 2, 1, 0, 'Automação de portões', 'automacao-de-portoes', 2, 0, '', 0, 0, 0, './catalogo/automacao-de-portoes'),
(9, 1, 3, 1, 0, 'Controle de Acesso', 'controle-de-acesso', 2, 0, '', 0, 0, 0, './catalogo/controle-de-acesso'),
(10, 1, 1, 1, 0, 'CFTV', 'cftv', 2, 0, '', 0, 0, 0, './catalogo/cftv'),
(11, 1, 9, 1, 0, 'Alarme de Incêndio', 'alarme-de-incendio', 2, 0, '', 0, 0, 0, './catalogo/alarme-de-incendio'),
(12, 1, 4, 1, 0, 'Portas Automáticas', 'portas-automaticas', 2, 0, '', 0, 1, 0, './catalogo/portas-automaticas'),
(13, 1, 5, 1, 0, 'Cercas Elétricas', 'cercas-eletricas', 2, 0, '', 0, 0, 0, './catalogo/cercas-eletricas'),
(14, 1, 6, 1, 0, 'Sistema de Comunicação', 'sistema-de-comunicacao', 2, 0, '', 0, 0, 0, './catalogo/sistema-de-comunicacao'),
(15, 1, 7, 1, 0, 'Sistema de Alarme', 'sistema-de-alarme', 2, 0, '', 0, 0, 0, './catalogo/sistema-de-alarme'),
(16, 1, 8, 1, 0, 'Iluminação de Emergência', 'iluminacao-de-emergencia', 2, 0, '', 0, 0, 0, './catalogo/iluminacao-de-emergencia'),
(17, 1, 10, 1, 0, 'Assistência 24h', 'assistencia-24h', 3, 0, '', 0, 0, 0, './assistencia-24h'),
(18, 1, 11, 1, 0, 'Manutenção Preventiva', 'manutencao-preventiva', 3, 0, '', NULL, 0, 0, './manutencao-preventiva'),
(19, 1, 12, 1, 0, 'Manutenção Corretiva', 'manutencao-corretiva', 3, 0, '', NULL, 0, 0, './manutencao-corretiva'),
(20, 1, 13, 1, 0, 'Consultoria Técnica', 'consultoria-tecnica', 3, 0, '', NULL, 0, 0, './consultoria-tecnica'),
(21, 1, 14, 1, 0, 'Início', 'inicio', 0, 0, '', 0, 0, 0, './'),
(22, 1, 19, 1, 0, 'Notícias', 'noticias', 0, 0, '', 0, 0, 0, './noticias'),
(23, 1, 0, 1, 0, 'COMERCIAL', 'comercial', 6, 0, '', NULL, 0, 0, './contato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gercont_noticias`
--

CREATE TABLE `gercont_noticias` (
  `id` int(11) NOT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `ordenar` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `url_titulo` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `data` date NOT NULL,
  `chamada` longtext NOT NULL,
  `texto` longtext NOT NULL,
  `imagens` tinyint(1) DEFAULT NULL,
  `videos` tinyint(1) DEFAULT NULL,
  `capa` varchar(255) NOT NULL,
  `categoria_das_noticias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gercont_noticias`
--

INSERT INTO `gercont_noticias` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `url_titulo`, `keywords`, `description`, `data`, `chamada`, `texto`, `imagens`, `videos`, `capa`, `categoria_das_noticias`) VALUES
(1, 2, 0, 1, 0, 'Aenean diam elit, accumsan in ex vel, mollis ullamcorper purus', 'aenean-diam-elit-accumsan-in-ex-vel-mollis-ullamcorper-purus', '', '', '2016-06-22', 'Donec laoreet sollicitudin nisi, nec semper velit congue sit amet. Curabitur fringilla finibus tincidunt. Nullam sit amet lorem venenatis, semper mauris eget, sollicitudin nisi.', '<p>&nbsp;</p>\n\n<p>Aenean diam elit, accumsan in ex vel, mollis ullamcorper purus. Donec laoreet sollicitudin nisi, nec semper velit congue sit amet. Curabitur fringilla finibus tincidunt. Nullam sit amet lorem venenatis, semper mauris eget, sollicitudin nisi. Vestibulum consequat id massa vitae molestie. Aenean lectus tellus, fringilla nec tempor eu, pulvinar id mauris. In elementum quam sapien. In eget augue rutrum, ultrices leo tristique, sodales est. Nunc porta lacus neque, ut porttitor nibh malesuada quis. Nulla consequat tortor et pulvinar condimentum. Integer non tempus urna.</p>\n\n<p>Aenean fermentum sapien sit amet magna congue malesuada. Integer et pellentesque orci, sed egestas purus. Praesent pulvinar risus in ante consequat egestas a sed justo. Cras vestibulum vulputate porttitor. Aliquam varius nisi vel libero iaculis dignissim a in quam. Cras dictum libero sem, ac fringilla tortor accumsan eget. Donec libero urna, eleifend ut pretium malesuada, efficitur hendrerit odio. Aliquam ultrices, est sed viverra commodo, dolor purus viverra orci, at eleifend mi dui eget lacus. Nam ac posuere magna, ut vulputate dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi.</p>\n\n<p>Integer efficitur dolor vitae tellus hendrerit venenatis vel at metus. Donec iaculis nibh eu suscipit sollicitudin. Cras interdum ultricies nunc non bibendum. Etiam odio mi, aliquet ut lacus et, congue semper purus. Fusce id efficitur nunc, a iaculis nunc. Sed nec vulputate magna. Nullam pharetra risus sit amet enim porta molestie. Aenean ante tortor, sodales nec dui et, interdum commodo ex. Fusce massa nisl, lobortis ac placerat sagittis, interdum vitae risus. Aliquam luctus sapien tortor, in tincidunt erat feugiat sit amet. Praesent eget massa blandit, ultricies erat sed, aliquet ligula. Ut commodo velit id nulla ultricies, non semper magna eleifend. Etiam vitae arcu et leo rutrum feugiat congue at lectus. Nam nec urna id mi suscipit pretium. Nam a ornare risus. Ut vestibulum orci nec lobortis pulvinar.</p>\n\n<p>Donec ut congue nunc. Sed porttitor nibh sed leo tristique, in eleifend risus sollicitudin. Integer eget lectus a magna volutpat fermentum. Mauris suscipit nisi vitae nibh iaculis, nec aliquam ante varius. Ut a magna a turpis scelerisque tristique quis ut risus. Pellentesque molestie sollicitudin urna, non vulputate tellus accumsan ultricies. In rhoncus cursus libero, mattis vulputate orci consequat id. Cras sem magna, rhoncus eu suscipit id, volutpat et ligula. Nam efficitur, velit non pellentesque posuere, urna enim facilisis libero, vel posuere lacus risus et ante. Quisque euismod metus ornare dui cursus ornare. Phasellus in iaculis nulla. Proin facilisis, lorem quis aliquet congue, neque turpis varius nisi, at eleifend ante dolor vel ex. Aliquam faucibus lorem vitae consequat porttitor. Cras vitae lobortis tellus, eu maximus augue. Praesent ultricies ex id quam tempor, nec pretium quam tempus. Vivamus eros est, rhoncus finibus fringilla vitae, consectetur vel elit.</p>\n\n<p>Sed ornare lectus ac leo tempor tincidunt. Quisque scelerisque, ligula vel commodo viverra, nisl lacus tempus tellus, non molestie ex ipsum vel turpis. Praesent a laoreet tellus, dictum scelerisque neque. Etiam sapien nibh, porttitor vitae posuere ut, feugiat at nisi. Donec convallis mauris dolor, vitae suscipit metus pellentesque vel. Praesent in mattis metus. Vestibulum tempus ultricies neque, vel lobortis quam mattis eu. Pellentesque nec bibendum nunc, eu gravida est.</p>\n\n<p>Proin tincidunt ut diam ut cursus. Aenean semper tortor vel orci tempor, at commodo tortor finibus. Nullam a turpis quis dui faucibus fringilla. Nullam tempus eu est quis tempus. Praesent rutrum rutrum ligula sed luctus. In elit est, vulputate eget tortor et, sagittis finibus magna. Sed at finibus turpis. Mauris non nunc tellus.</p>\n\n<p>Donec suscipit, urna ut euismod viverra, magna ligula vestibulum velit, sit amet sollicitudin dui ex eget mauris. Nunc semper auctor mauris, sed vestibulum metus ultrices ut. In dolor diam, aliquam at massa vitae, vestibulum congue odio. Proin porttitor tempor nisl eget porta. In viverra ultricies elit. Nulla odio nisl, feugiat auctor nulla eu, tincidunt venenatis leo. Vivamus non lobortis metus. Suspendisse nec ex egestas ex tempus iaculis. Cras et elit tempor, faucibus nunc vitae, vestibulum nunc. Curabitur dolor sapien, vulputate sed pellentesque quis, vestibulum non mauris. Donec vehicula ac purus eu blandit. Nullam tristique lacinia nunc, id ornare felis varius et.</p>\n\n<p>Fusce consectetur libero odio, quis maximus magna congue sed. Ut eget tortor sed urna facilisis semper. Nulla facilisi. Fusce rutrum, nibh quis convallis facilisis, diam augue tempus nunc, sed congue massa quam in augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam euismod eros ante, vitae bibendum lorem placerat sit amet. Maecenas a urna orci. Suspendisse vehicula mollis magna, id sagittis sem rutrum quis. Maecenas ligula sem, sagittis quis suscipit non, pulvinar et odio. Vestibulum et mollis magna. Pellentesque sem diam, condimentum et sapien sed, rhoncus consectetur lacus. Suspendisse quis porttitor ligula. Vivamus ac metus ut arcu suscipit malesuada in quis est.</p>\n\n<p>Sed eleifend justo elit, scelerisque ornare metus consequat sed. Sed vestibulum pharetra neque sit amet porttitor. Proin dignissim purus in lorem convallis maximus. Fusce vulputate ipsum elit, at feugiat augue dictum ut. Cras sed urna faucibus, laoreet orci tincidunt, luctus libero. Aenean pulvinar feugiat velit sed accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut sed porttitor libero, sit amet tincidunt leo. Pellentesque velit neque, vestibulum non quam eu, imperdiet vehicula nunc. Aliquam vel lectus tincidunt, volutpat lacus sed, iaculis felis. Phasellus dapibus nibh vel diam lobortis pharetra.</p>\n\n<p>Sed congue volutpat facilisis. Etiam nec ultricies magna. Phasellus pellentesque vulputate posuere. Praesent nibh sapien, bibendum ut arcu non, rhoncus bibendum justo. Cras sit amet odio id ante venenatis tincidunt quis vitae ante. Sed enim ipsum, aliquet in accumsan eget, commodo at mi. Integer suscipit fermentum ligula, vitae porttitor purus rhoncus quis. In lorem erat, convallis vel dictum eu, vulputate non arcu. Duis semper diam at enim lobortis porttitor. Pellentesque rhoncus non metus sit amet auctor. Sed feugiat, mi id ornare efficitur, dui ex convallis libero, sit amet egestas libero tortor sed lectus.</p>\n', 0, 0, 'cfd-broker.jpg', 2),
(2, 2, 0, 1, 0, 'Fusce consectetur libero odio, quis maximus magna', 'fusce-consectetur-libero-odio-quis-maximus-magna', '', '', '2016-06-22', 'Ut eget tortor sed urna facilisis semper. Nulla facilisi. Fusce rutrum, nibh quis convallis facilisis, diam augue tempus nunc, sed congue massa quam in augue.', '<div id="lipsum">\r\n<p>Aenean diam elit, accumsan in ex vel, mollis ullamcorper purus. Donec laoreet sollicitudin nisi, nec semper velit congue sit amet. Curabitur fringilla finibus tincidunt. Nullam sit amet lorem venenatis, semper mauris eget, sollicitudin nisi. Vestibulum consequat id massa vitae molestie. Aenean lectus tellus, fringilla nec tempor eu, pulvinar id mauris. In elementum quam sapien. In eget augue rutrum, ultrices leo tristique, sodales est. Nunc porta lacus neque, ut porttitor nibh malesuada quis. Nulla consequat tortor et pulvinar condimentum. Integer non tempus urna.</p>\r\n\r\n<p>Aenean fermentum sapien sit amet magna congue malesuada. Integer et pellentesque orci, sed egestas purus. Praesent pulvinar risus in ante consequat egestas a sed justo. Cras vestibulum vulputate porttitor. Aliquam varius nisi vel libero iaculis dignissim a in quam. Cras dictum libero sem, ac fringilla tortor accumsan eget. Donec libero urna, eleifend ut pretium malesuada, efficitur hendrerit odio. Aliquam ultrices, est sed viverra commodo, dolor purus viverra orci, at eleifend mi dui eget lacus. Nam ac posuere magna, ut vulputate dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi.</p>\r\n\r\n<p>Integer efficitur dolor vitae tellus hendrerit venenatis vel at metus. Donec iaculis nibh eu suscipit sollicitudin. Cras interdum ultricies nunc non bibendum. Etiam odio mi, aliquet ut lacus et, congue semper purus. Fusce id efficitur nunc, a iaculis nunc. Sed nec vulputate magna. Nullam pharetra risus sit amet enim porta molestie. Aenean ante tortor, sodales nec dui et, interdum commodo ex. Fusce massa nisl, lobortis ac placerat sagittis, interdum vitae risus. Aliquam luctus sapien tortor, in tincidunt erat feugiat sit amet. Praesent eget massa blandit, ultricies erat sed, aliquet ligula. Ut commodo velit id nulla ultricies, non semper magna eleifend. Etiam vitae arcu et leo rutrum feugiat congue at lectus. Nam nec urna id mi suscipit pretium. Nam a ornare risus. Ut vestibulum orci nec lobortis pulvinar.</p>\r\n\r\n<p>Donec ut congue nunc. Sed porttitor nibh sed leo tristique, in eleifend risus sollicitudin. Integer eget lectus a magna volutpat fermentum. Mauris suscipit nisi vitae nibh iaculis, nec aliquam ante varius. Ut a magna a turpis scelerisque tristique quis ut risus. Pellentesque molestie sollicitudin urna, non vulputate tellus accumsan ultricies. In rhoncus cursus libero, mattis vulputate orci consequat id. Cras sem magna, rhoncus eu suscipit id, volutpat et ligula. Nam efficitur, velit non pellentesque posuere, urna enim facilisis libero, vel posuere lacus risus et ante. Quisque euismod metus ornare dui cursus ornare. Phasellus in iaculis nulla. Proin facilisis, lorem quis aliquet congue, neque turpis varius nisi, at eleifend ante dolor vel ex. Aliquam faucibus lorem vitae consequat porttitor. Cras vitae lobortis tellus, eu maximus augue. Praesent ultricies ex id quam tempor, nec pretium quam tempus. Vivamus eros est, rhoncus finibus fringilla vitae, consectetur vel elit.</p>\r\n\r\n<p>Sed ornare lectus ac leo tempor tincidunt. Quisque scelerisque, ligula vel commodo viverra, nisl lacus tempus tellus, non molestie ex ipsum vel turpis. Praesent a laoreet tellus, dictum scelerisque neque. Etiam sapien nibh, porttitor vitae posuere ut, feugiat at nisi. Donec convallis mauris dolor, vitae suscipit metus pellentesque vel. Praesent in mattis metus. Vestibulum tempus ultricies neque, vel lobortis quam mattis eu. Pellentesque nec bibendum nunc, eu gravida est.</p>\r\n\r\n<p>Proin tincidunt ut diam ut cursus. Aenean semper tortor vel orci tempor, at commodo tortor finibus. Nullam a turpis quis dui faucibus fringilla. Nullam tempus eu est quis tempus. Praesent rutrum rutrum ligula sed luctus. In elit est, vulputate eget tortor et, sagittis finibus magna. Sed at finibus turpis. Mauris non nunc tellus.</p>\r\n\r\n<p>Donec suscipit, urna ut euismod viverra, magna ligula vestibulum velit, sit amet sollicitudin dui ex eget mauris. Nunc semper auctor mauris, sed vestibulum metus ultrices ut. In dolor diam, aliquam at massa vitae, vestibulum congue odio. Proin porttitor tempor nisl eget porta. In viverra ultricies elit. Nulla odio nisl, feugiat auctor nulla eu, tincidunt venenatis leo. Vivamus non lobortis metus. Suspendisse nec ex egestas ex tempus iaculis. Cras et elit tempor, faucibus nunc vitae, vestibulum nunc. Curabitur dolor sapien, vulputate sed pellentesque quis, vestibulum non mauris. Donec vehicula ac purus eu blandit. Nullam tristique lacinia nunc, id ornare felis varius et.</p>\r\n\r\n<p>Fusce consectetur libero odio, quis maximus magna congue sed. Ut eget tortor sed urna facilisis semper. Nulla facilisi. Fusce rutrum, nibh quis convallis facilisis, diam augue tempus nunc, sed congue massa quam in augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam euismod eros ante, vitae bibendum lorem placerat sit amet. Maecenas a urna orci. Suspendisse vehicula mollis magna, id sagittis sem rutrum quis. Maecenas ligula sem, sagittis quis suscipit non, pulvinar et odio. Vestibulum et mollis magna. Pellentesque sem diam, condimentum et sapien sed, rhoncus consectetur lacus. Suspendisse quis porttitor ligula. Vivamus ac metus ut arcu suscipit malesuada in quis est.</p>\r\n\r\n<p>Sed eleifend justo elit, scelerisque ornare metus consequat sed. Sed vestibulum pharetra neque sit amet porttitor. Proin dignissim purus in lorem convallis maximus. Fusce vulputate ipsum elit, at feugiat augue dictum ut. Cras sed urna faucibus, laoreet orci tincidunt, luctus libero. Aenean pulvinar feugiat velit sed accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut sed porttitor libero, sit amet tincidunt leo. Pellentesque velit neque, vestibulum non quam eu, imperdiet vehicula nunc. Aliquam vel lectus tincidunt, volutpat lacus sed, iaculis felis. Phasellus dapibus nibh vel diam lobortis pharetra.</p>\r\n\r\n<p>Sed congue volutpat facilisis. Etiam nec ultricies magna. Phasellus pellentesque vulputate posuere. Praesent nibh sapien, bibendum ut arcu non, rhoncus bibendum justo. Cras sit amet odio id ante venenatis tincidunt quis vitae ante. Sed enim ipsum, aliquet in accumsan eget, commodo at mi. Integer suscipit fermentum ligula, vitae porttitor purus rhoncus quis. In lorem erat, convallis vel dictum eu, vulputate non arcu. Duis semper diam at enim lobortis porttitor. Pellentesque rhoncus non metus sit amet auctor. Sed feugiat, mi id ornare efficitur, dui ex convallis libero, sit amet egestas libero tortor sed lectus.</p>\r\n</div>\r\n', 0, 0, 'investor-check-main.jpg', 2),
(3, 2, 0, 1, 0, 'Sed congue volutpat facilisis. Etiam nec ultricies magna', 'sed-congue-volutpat-facilisis-etiam-nec-ultricies-magna', '', '', '2016-06-22', 'Phasellus pellentesque vulputate posuere. Praesent nibh sapien, bibendum ut arcu non, rhoncus bibendum justo. Cras sit amet odio id ante venenatis tincidunt quis vitae ante.', '<div id="lipsum">\r\n<p>Aenean diam elit, accumsan in ex vel, mollis ullamcorper purus. Donec laoreet sollicitudin nisi, nec semper velit congue sit amet. Curabitur fringilla finibus tincidunt. Nullam sit amet lorem venenatis, semper mauris eget, sollicitudin nisi. Vestibulum consequat id massa vitae molestie. Aenean lectus tellus, fringilla nec tempor eu, pulvinar id mauris. In elementum quam sapien. In eget augue rutrum, ultrices leo tristique, sodales est. Nunc porta lacus neque, ut porttitor nibh malesuada quis. Nulla consequat tortor et pulvinar condimentum. Integer non tempus urna.</p>\r\n\r\n<p>Aenean fermentum sapien sit amet magna congue malesuada. Integer et pellentesque orci, sed egestas purus. Praesent pulvinar risus in ante consequat egestas a sed justo. Cras vestibulum vulputate porttitor. Aliquam varius nisi vel libero iaculis dignissim a in quam. Cras dictum libero sem, ac fringilla tortor accumsan eget. Donec libero urna, eleifend ut pretium malesuada, efficitur hendrerit odio. Aliquam ultrices, est sed viverra commodo, dolor purus viverra orci, at eleifend mi dui eget lacus. Nam ac posuere magna, ut vulputate dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi.</p>\r\n\r\n<p>Integer efficitur dolor vitae tellus hendrerit venenatis vel at metus. Donec iaculis nibh eu suscipit sollicitudin. Cras interdum ultricies nunc non bibendum. Etiam odio mi, aliquet ut lacus et, congue semper purus. Fusce id efficitur nunc, a iaculis nunc. Sed nec vulputate magna. Nullam pharetra risus sit amet enim porta molestie. Aenean ante tortor, sodales nec dui et, interdum commodo ex. Fusce massa nisl, lobortis ac placerat sagittis, interdum vitae risus. Aliquam luctus sapien tortor, in tincidunt erat feugiat sit amet. Praesent eget massa blandit, ultricies erat sed, aliquet ligula. Ut commodo velit id nulla ultricies, non semper magna eleifend. Etiam vitae arcu et leo rutrum feugiat congue at lectus. Nam nec urna id mi suscipit pretium. Nam a ornare risus. Ut vestibulum orci nec lobortis pulvinar.</p>\r\n\r\n<p>Donec ut congue nunc. Sed porttitor nibh sed leo tristique, in eleifend risus sollicitudin. Integer eget lectus a magna volutpat fermentum. Mauris suscipit nisi vitae nibh iaculis, nec aliquam ante varius. Ut a magna a turpis scelerisque tristique quis ut risus. Pellentesque molestie sollicitudin urna, non vulputate tellus accumsan ultricies. In rhoncus cursus libero, mattis vulputate orci consequat id. Cras sem magna, rhoncus eu suscipit id, volutpat et ligula. Nam efficitur, velit non pellentesque posuere, urna enim facilisis libero, vel posuere lacus risus et ante. Quisque euismod metus ornare dui cursus ornare. Phasellus in iaculis nulla. Proin facilisis, lorem quis aliquet congue, neque turpis varius nisi, at eleifend ante dolor vel ex. Aliquam faucibus lorem vitae consequat porttitor. Cras vitae lobortis tellus, eu maximus augue. Praesent ultricies ex id quam tempor, nec pretium quam tempus. Vivamus eros est, rhoncus finibus fringilla vitae, consectetur vel elit.</p>\r\n\r\n<p>Sed ornare lectus ac leo tempor tincidunt. Quisque scelerisque, ligula vel commodo viverra, nisl lacus tempus tellus, non molestie ex ipsum vel turpis. Praesent a laoreet tellus, dictum scelerisque neque. Etiam sapien nibh, porttitor vitae posuere ut, feugiat at nisi. Donec convallis mauris dolor, vitae suscipit metus pellentesque vel. Praesent in mattis metus. Vestibulum tempus ultricies neque, vel lobortis quam mattis eu. Pellentesque nec bibendum nunc, eu gravida est.</p>\r\n\r\n<p>Proin tincidunt ut diam ut cursus. Aenean semper tortor vel orci tempor, at commodo tortor finibus. Nullam a turpis quis dui faucibus fringilla. Nullam tempus eu est quis tempus. Praesent rutrum rutrum ligula sed luctus. In elit est, vulputate eget tortor et, sagittis finibus magna. Sed at finibus turpis. Mauris non nunc tellus.</p>\r\n\r\n<p>Donec suscipit, urna ut euismod viverra, magna ligula vestibulum velit, sit amet sollicitudin dui ex eget mauris. Nunc semper auctor mauris, sed vestibulum metus ultrices ut. In dolor diam, aliquam at massa vitae, vestibulum congue odio. Proin porttitor tempor nisl eget porta. In viverra ultricies elit. Nulla odio nisl, feugiat auctor nulla eu, tincidunt venenatis leo. Vivamus non lobortis metus. Suspendisse nec ex egestas ex tempus iaculis. Cras et elit tempor, faucibus nunc vitae, vestibulum nunc. Curabitur dolor sapien, vulputate sed pellentesque quis, vestibulum non mauris. Donec vehicula ac purus eu blandit. Nullam tristique lacinia nunc, id ornare felis varius et.</p>\r\n\r\n<p>Fusce consectetur libero odio, quis maximus magna congue sed. Ut eget tortor sed urna facilisis semper. Nulla facilisi. Fusce rutrum, nibh quis convallis facilisis, diam augue tempus nunc, sed congue massa quam in augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam euismod eros ante, vitae bibendum lorem placerat sit amet. Maecenas a urna orci. Suspendisse vehicula mollis magna, id sagittis sem rutrum quis. Maecenas ligula sem, sagittis quis suscipit non, pulvinar et odio. Vestibulum et mollis magna. Pellentesque sem diam, condimentum et sapien sed, rhoncus consectetur lacus. Suspendisse quis porttitor ligula. Vivamus ac metus ut arcu suscipit malesuada in quis est.</p>\r\n\r\n<p>Sed eleifend justo elit, scelerisque ornare metus consequat sed. Sed vestibulum pharetra neque sit amet porttitor. Proin dignissim purus in lorem convallis maximus. Fusce vulputate ipsum elit, at feugiat augue dictum ut. Cras sed urna faucibus, laoreet orci tincidunt, luctus libero. Aenean pulvinar feugiat velit sed accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut sed porttitor libero, sit amet tincidunt leo. Pellentesque velit neque, vestibulum non quam eu, imperdiet vehicula nunc. Aliquam vel lectus tincidunt, volutpat lacus sed, iaculis felis. Phasellus dapibus nibh vel diam lobortis pharetra.</p>\r\n\r\n<p>Sed congue volutpat facilisis. Etiam nec ultricies magna. Phasellus pellentesque vulputate posuere. Praesent nibh sapien, bibendum ut arcu non, rhoncus bibendum justo. Cras sit amet odio id ante venenatis tincidunt quis vitae ante. Sed enim ipsum, aliquet in accumsan eget, commodo at mi. Integer suscipit fermentum ligula, vitae porttitor purus rhoncus quis. In lorem erat, convallis vel dictum eu, vulputate non arcu. Duis semper diam at enim lobortis porttitor. Pellentesque rhoncus non metus sit amet auctor. Sed feugiat, mi id ornare efficitur, dui ex convallis libero, sit amet egestas libero tortor sed lectus.</p>\r\n</div>\r\n', 0, 0, 'Investor-tips.jpg', 2),
(4, 1, 0, 1, 0, 'Cimtel lança novo site para ampliar e otimizar atendimento', 'cimtel-lanca-novo-site-para-ampliar-e-otimizar-atendimento', 'automação, sistemas de segurança em florianópolis', 'Conheça o site da empresa que é referência em automação e sistemas de segurança em Florianópolis e Região!', '2016-07-13', 'Plataforma foi totalmente remodelada e otimizada para oferecer uma melhor experiência aos usuários', '<p><img alt="" src="/ckfinder/userfiles/images/erty.png" style="width:100%" /></p>\n\n<p>Buscando atender cada vez melhor, a Cimtel Tecnologia em Automa&ccedil;&atilde;o d&aacute; mais um passo em sua consolida&ccedil;&atilde;o no ambiente digital e lan&ccedil;a seu novo site, totalmente remodelado e otimizado para oferecer uma melhor experi&ecirc;ncia aos usu&aacute;rios e todos que buscam uma empresa de confian&ccedil;a quando o assunto &eacute; sistemas de seguran&ccedil;a e solu&ccedil;&otilde;es em automa&ccedil;&atilde;o</p>\n\n<p><strong>HOME</strong><br />\nNa p&aacute;gina inicial do site, um banner rotativo apresenta alguns dos servi&ccedil;os oferecidos pela Cimtel. Abaixo, cadastro r&aacute;pido para receber as novidades do setor. Na sequ&ecirc;ncia, categorias de produtos, depoimentos de clientes, servi&ccedil;os e alguns clientes atendidos.</p>\n\n<p><strong>SERVI&Ccedil;OS</strong><br />\nNa p&aacute;gina que lista todos os <strong><a href="./servicos" target="_blank">servi&ccedil;os</a></strong> voc&ecirc; encontra um breve descritivo sobre cada um deles: Assist&ecirc;ncia 24h, Manuten&ccedil;&atilde;o Preventiva, Manuten&ccedil;&atilde;o Corretiva e Consultoria T&eacute;cnica. Clicando sobre eles, voc&ecirc; acessa mais informa&ccedil;&otilde;es detalhadas e entende porque a melhor op&ccedil;&atilde;o &eacute; contar com a Cimtel.</p>\n\n<p><strong>EMPRESA</strong><br />\nClicando sobre o link <a href="./empresa" target="_blank"><strong>Empresa</strong></a>, no menu superior, voc&ecirc; pode conhecer mais sobre a hist&oacute;ria de quase 3 d&eacute;cadas da Cimtel, trajet&oacute;ria que fez da empresa uma das grandes refer&ecirc;ncias em tecnologia de automa&ccedil;&atilde;o e sistemas de seguran&ccedil;a e monitoramento em Florian&oacute;polis.</p>\n\n<p><strong>PRODUTOS</strong><br />\nEm um <strong><a href="./catalogo" target="_blank">cat&aacute;logo</a></strong> completo voc&ecirc; encontra os produtos divididos por categorias. Acessando as categorias voc&ecirc; pode verificar os produtos dispon&iacute;veis, detalhes e caracter&iacute;sticas t&eacute;cnicas de cada um deles, contando sempre com um formul&aacute;rio de contato r&aacute;pido para d&uacute;vidas e solicita&ccedil;&atilde;o de or&ccedil;amentos.</p>\n\n<p>E isso n&atilde;o &eacute; tudo. J&aacute; demos in&iacute;cio &agrave; uma gest&atilde;o efetiva no Facebook para ampliar e melhorar o relacionamento com os clientes, postando materiais relevantes &nbsp;e orientando clientes e interessados.</p>\n\n<p>Para voc&ecirc;, sua empresa, condom&iacute;nio ou ind&uacute;stria a melhor op&ccedil;&atilde;o est&aacute; aqui. <strong><a href="./contato" target="_self">Fa&ccedil;a contato</a></strong>, solicite um or&ccedil;amento e deixe o resto com a gente!</p>\n', 0, 0, 'ertyu.png', 6),
(5, 1, 0, 1, 0, '5 dicas para tornar seu condomínio mais seguro', '5-dicas-para-tornar-seu-condominio-mais-seguro', 'segurança condominial, florianópolis', 'Veja como fazer do seu condomínio um ambiente mais seguro!', '2016-07-27', 'Discuta na reunião de condomínio sobre as vantagens de contar com a assistência 24 horas', '<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominial-florianopolis-cimtel.png" style="width:100%" /></p>\n\n<p>Falar em seguran&ccedil;a nunca foi assunto t&atilde;o s&eacute;rio quanto nos dias de hoje. Quando se fala em seguran&ccedil;a condominial a responsabilidade de cada cond&ocirc;mino &eacute; ainda maior, pois eventuais brechas e falhas podem acarretar na exposi&ccedil;&atilde;o de dezenas ou centenas de pessoas.</p>\n\n<p>Por isso &eacute; sempre importante estar atento e reunir o m&aacute;ximo poss&iacute;vel de informa&ccedil;&otilde;es para reduzir os riscos. Pensando nisso, listaremos hoje <strong>6 dicas para tornar seu condom&iacute;nio mais seguro</strong>. S&atilde;o discuss&otilde;es que devem ser feitas nas reuni&otilde;es do condom&iacute;nio, a fim de que todos estejam efetivamente mais protegidos em seus domic&iacute;lios.</p>\n\n<p><strong>GUARITA</strong><br />\nA guarita &eacute; a &lsquo;linha de frente&rsquo; da defesa de um condom&iacute;nio. Ela trata de proteger n&atilde;o apenas os funcion&aacute;rios, como tamb&eacute;m inibir logo de in&iacute;cio qualquer a&ccedil;&atilde;o criminosa. &Eacute; nela onde, normalmente, fica o sistema de monitoramento de c&acirc;meras. Aqui a grande dica s&atilde;o vidros espelhados ou escurecidos, para que mesmo quando n&atilde;o haja ningu&eacute;m l&aacute; - muitos condom&iacute;nios n&atilde;o contam com porteiro 24 horas - o papel de inibir siga sendo cumprido.</p>\n\n<p>E sempre dentro do poss&iacute;vel, transfira a instala&ccedil;&atilde;o dos servidores de imagens, de controle de acesso e de outros equipamentos de seguran&ccedil;a&nbsp;para salas fechadas e seguras, deixando na guarita apenas o acesso para visualiza&ccedil;&atilde;o das imagens e outros dispositivos. Garantindo assim a seguran&ccedil;a dessas imagens e informa&ccedil;&otilde;es de acesso do dia a dia do condom&iacute;nio.</p>\n\n<p><strong>CFTV</strong><br />\nUm sistema efetivo de circuito fechado de TV (CFTV) contribui muito e &eacute; cada vez mais indispens&aacute;vel. O mercado disponibiliza hoje c&acirc;meras de alta resolu&ccedil;&atilde;o mesmo em condi&ccedil;&otilde;es de escuro extremo. Consulte uma empresa especializada e invista em equipamentos e em um planejamento que garantam o total atendimento &agrave;s necessidades.</p>\n\n<p><strong>CONTROLE DE ACESSO</strong><br />\nAl&eacute;m do r&iacute;gido controle feito pelos pr&oacute;prios funcion&aacute;rios e moradores do condom&iacute;nio, o mercado oferece muitas op&ccedil;&otilde;es para o controle de acesso por meio de equipamentos. De um simples cart&atilde;o magn&eacute;tico ou senha, at&eacute; sistemas mais complexos de identifica&ccedil;&atilde;o biom&eacute;trica, &eacute; poss&iacute;vel ter total controle sobre quem entra e quem sai, inclusive com a possibilidade de grava&ccedil;&atilde;o digital.</p>\n\n<p><strong>NOVOS FUNCION&Aacute;RIOS</strong><br />\nToda vez que houver a necessidade da contrata&ccedil;&atilde;o de novos funcion&aacute;rios para o condom&iacute;nio &eacute; preciso pedir antecedentes, refer&ecirc;ncias e todo tipo de certifica&ccedil;&atilde;o poss&iacute;vel, j&aacute; que essa pessoa ter&aacute; livre acesso &agrave;s &aacute;reas do condom&iacute;nio. Um curso de capacita&ccedil;&atilde;o e um acompanhamento mais pr&oacute;ximo nos primeiros dias ajudam muito tamb&eacute;m.</p>\n\n<p><strong>ASSIST&Ecirc;NCIA 24 HORAS</strong><br />\nDiscuta na reuni&atilde;o de condom&iacute;nio sobre as vantagens de contar com a assist&ecirc;ncia 24 horas de uma empresa especializada e com hist&oacute;rico de bons servi&ccedil;os prestados. Um port&atilde;o que emperra aberto durante a madrugada, em um condom&iacute;nio que n&atilde;o tem porteiro durante esse hor&aacute;rio -, por exemplo, &eacute; uma exposi&ccedil;&atilde;o gigantesca. &nbsp;Esses pacotes podem incluir n&atilde;o apenas emerg&ecirc;ncias, mas tamb&eacute;m manuten&ccedil;&atilde;o preventiva, manuten&ccedil;&atilde;o corretiva e cobertura completa para os equipamentos do sistema de seguran&ccedil;a.</p>\n\n<p>S&atilde;o dicas importantes e assuntos que merecem a devida aten&ccedil;&atilde;o. E quando pensar em <strong>sistemas de seguran&ccedil;a e automa&ccedil;&atilde;o em Florian&oacute;polis e regi&atilde;o</strong>, bem como servi&ccedil;os relacionados, conte com a <strong><a href="http://www.cimtel.com.br/" target="_self">Cimtel</a></strong>. S&atilde;o 28 anos prestando servi&ccedil;os a clientes de todos os porte e construindo uma hist&oacute;ria de confian&ccedil;a.</p>\n', 0, 0, 'seguranca-condominial-florianopolis-cimtel-capa.png', 5),
(6, 1, 0, 1, 0, 'Segurança para condomínios em Florianópolis é com a Cimtel', 'seguranca-para-condominios-em-florianopolis-e-com-a-cimtel', 'sistemas de segurança, segurança em Florianópolis, segurança condominial', 'Tudo o que seu condomínio precisa em automação e segurança em um só lugar. Veja!', '2016-08-15', 'Empresa comporta algumas das melhores soluções para garantir a tranquilidade no seu condomínio', '<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominio-florianopolis-cimtel.png" style="height:100%; width:100%" /></p>\n\n<p>Com quase tr&ecirc;s d&eacute;cadas de atua&ccedil;&atilde;o s&oacute;lida no mercado, a Cimtel Tecnologia &eacute; a op&ccedil;&atilde;o certa quando se fala em sistemas de seguran&ccedil;a para condom&iacute;nios em Florian&oacute;polis e regi&atilde;o. Representando algumas das melhores marcas de equipamentos do segmento e com uma equipe altamente qualificada, a Cimtel comporta as melhores solu&ccedil;&otilde;es para garantir a tranquilidade e a seguran&ccedil;a do seu condom&iacute;nio.</p>\n\n<p>Conhe&ccedil;a alguns dos produtos e servi&ccedil;os que podem fazer das depend&ecirc;ncias do seu residencial um lugar mais seguro para sua fam&iacute;lia e vizinhos.</p>\n\n<p><strong>CFTV</strong><br />\nOs circuitos fechados de televis&atilde;o est&atilde;o presentes na maioria dos condom&iacute;nios e comp&otilde;em parte importante do sistema de seguran&ccedil;a, monitorando e registrando o que ocorre nas depend&ecirc;ncias, inclusive o acesso de prestadores de servi&ccedil;os, visitantes e eventuais estranhos que tentem entrar em &aacute;reas de acesso restrito.</p>\n\n<p><strong>CONTROLE DE ACESSO</strong><br />\nLibera&ccedil;&atilde;o de acesso por senha, cart&atilde;o ou biometria, comunica&ccedil;&atilde;o via IP, Serial ou USB para relat&oacute;rios, gest&atilde;o de cadastros e outros. Com os sistemas de controle de acesso dispon&iacute;veis na Cimtel voc&ecirc; tem muito mais seguran&ccedil;a com rela&ccedil;&atilde;o as pessoas que transitam pelo condom&iacute;nio.</p>\n\n<p><strong>ASSIST&Ecirc;NCIA 24 HORAS</strong><br />\nAl&eacute;m dos equipamentos citados acima e muitos outros comercializados e instalados pela Cimtel, seu condom&iacute;nio pode contar tamb&eacute;m com a tranquilidade da Assist&ecirc;ncia 24 horas. Como sabemos, equipamento n&atilde;o espera a &#39;hora certa&#39; para quebrar e ningu&eacute;m quer ficar um final de semana todo com um port&atilde;o problem&aacute;tico, por exemplo, que exponha os moradores ao risco de invas&otilde;es. Al&eacute;m da assist&ecirc;ncia corretiva 24 horas, nesse modelo a Cimtel realiza tamb&eacute;m manuten&ccedil;&otilde;es peri&oacute;dicas preventivas, para justamente minimizar riscos de problemas com equipamentos e brechas na seguran&ccedil;a.</p>\n\n<p><strong><a href="http://www.cimtel.com.br/contato" target="_self">Fa&ccedil;a contato</a></strong> e garanta o melhor em seguran&ccedil;a para o seu condom&iacute;nio. Leia tamb&eacute;m nosso post &#39;<a href="http://www.cimtel.com.br/noticias/5-dicas-para-tornar-seu-condominio-mais-seguro" target="_self"><strong>5 dicas para tornar seu condom&iacute;nio mais seguro</strong></a>&#39;. At&eacute; a pr&oacute;xima!</p>\n\n<p>&nbsp;</p>\n', 0, 0, 'cimtel-condominio-florianopolis-capa.png', 5),
(7, 1, 0, 1, 0, 'Cerca elétrica: segurança perimetral efetiva', 'cerca-eletrica-seguranca-perimetral-efetiva', 'cerca elétrica em florianópolis', 'Onde comprar cerca elétrica em Florianópolis? Veja aqui!', '2016-08-31', 'Equipamento não oferece risco de vida, mas seus pulsares desmotivam até os mais corajosos', '<p><img alt="" src="/ckfinder/userfiles/images/cerca-eletrica-florianopolis-blog.png" style="height:100%; width:100%" /></p>\n\n<p>O mercado de sistemas de seguran&ccedil;a para condom&iacute;nios e im&oacute;veis em geral oferece muitas op&ccedil;&otilde;es para voc&ecirc; manter criminosos e pessoas mal intencionadas longe da &aacute;rea que voc&ecirc; pretende proteger. Uma das mais tradicionais e efetivas &eacute; a <strong>cerca el&eacute;trica</strong>, que n&atilde;o apenas desestimula eventuais invasores como responde a altura aos mais corajosos.</p>\n\n<h2><span style="font-size:14px">SEGURAN&Ccedil;A</span></h2>\n\n<p><span style="font-size:13px">Ao contr&aacute;rio do que se pensa, o equipamento n&atilde;o oferece risco de vida, mas seus pulsares desmotivam at&eacute; os mais corajosos. Uma corrente de 8.000 a 12.000 volts pulsa por um mil&eacute;simo de segundo, a cada 1,2 segundo, produzindo um grande efeito psicol&oacute;gico no invasor.</span></p>\n\n<p>Apesar da forte a&ccedil;&atilde;o moment&acirc;nea, a cerca el&eacute;trica &eacute; segura para pessoas e animais. Ela n&atilde;o queima, n&atilde;o lesiona e n&atilde;o atua no sistema nervoso por seu pulso curto e de baixa amperagem.</p>\n\n<h2><span style="font-size:14px">INTEGRA&Ccedil;&Atilde;O</span></h2>\n\n<p>Algumas das marcas dispon&iacute;veis possibilitam a integra&ccedil;&atilde;o do sistema de cerca el&eacute;trica com alarmes e disparo de mensagem de voz via telefone, alertando sobre a tentativa de invas&atilde;o e ampliando a seguran&ccedil;a dos bens e pessoas. O custo-benef&iacute;cio &eacute; um dos grandes diferenciais desta solu&ccedil;&atilde;o.</p>\n\n<h2><span style="font-size:14px">CIMTEL</span></h2>\n\n<p>Pensando <strong>onde comprar cerca el&eacute;trica em Florian&oacute;polis?</strong> <strong><a href="http://www.cimtel.com.br/contato" target="_blank">Fa&ccedil;a contato</a></strong> com a Cimtel Tecnologia em Automa&ccedil;&atilde;o, garanta os melhores equipamentos e o melhor servi&ccedil;o de instala&ccedil;&atilde;o com o pre&ccedil;o justo.&nbsp;</p>\n\n<p>Mais dicas de seguran&ccedil;a? Leia tamb&eacute;m nosso post &lsquo;<strong><a href="http://www.cimtel.com.br/noticias/5-dicas-para-tornar-seu-condominio-mais-seguro" target="_self">5 dicas para tornar seu condom&iacute;nio mais seguro</a></strong>&rsquo;.&nbsp;</p>\n', 0, 0, 'cerca-eletrica-florianopolis-blog-capa.png', 8),
(8, 1, 0, 1, 0, 'Veja como evitar um assalto à residência em 5 passos', 'veja-como-evitar-um-assalto-a-residencia-em-5-passos', 'assalto à residência, segurança domiciliar em florianópolis, segurança residencial', 'Segurança residencial é assunto sério. Veja como reduzir as chances de ser a próxima vítima em poucos passos!', '2016-09-26', 'Hoje não dá para contar com a sorte e investir na segurança residencial é cada vez mais importante', '<p><img alt="" src="/ckfinder/userfiles/images/seguranca-domiciliar-florianopolis.png" style="height:100%; width:100%" /></p>\n\n<p>Nos dias de hoje n&atilde;o d&aacute; para contar com a sorte e investir na <strong>seguran&ccedil;a residencial</strong> &eacute; cada vez mais importante. Muitos equipamentos podem auxiliar nessa tarefa e associados a algumas dicas importantes voc&ecirc; pode evitar que sua casa seja assaltada, garantindo a seguran&ccedil;a dos moradores e a prote&ccedil;&atilde;o de seus bens.</p>\n\n<p>Vamos listar ent&atilde;o 5 dicas que voc&ecirc; pode utilizar para evitar preju&iacute;zos materiais, psicol&oacute;gicos e f&iacute;sicos.</p>\n\n<h2><span style="font-size:14px">CHEGANDO EM CASA</span></h2>\n\n<p>Aqui a dica mais &oacute;bvia. Fique atento &agrave;&nbsp;movimenta&ccedil;&otilde;es estranhas ao redor de sua resid&ecirc;ncia na hora da chegada. Esse &eacute; o momento preferido dos criminosos, j&aacute; que entrar pelo port&atilde;o aberto &eacute; muito mais f&aacute;cil que pular muros e arrombar portas. N&atilde;o fique conversando com o port&atilde;o aberto e se desconfiar de algo na chegada, aborte a entrada e rode pelo bairro. Chame a pol&iacute;cia se achar necess&aacute;rio.</p>\n\n<h2><span style="font-size:14px">AUTOMA&Ccedil;&Atilde;O DE PORT&Otilde;ES</span></h2>\n\n<p>Ao investir em um motor para seu port&atilde;o ou em projetos de automa&ccedil;&atilde;o voc&ecirc; n&atilde;o ganha apenas em comodidade, mas principalmente em seguran&ccedil;a. O processo de descer do carro para abrir o port&atilde;o, entrar com o ve&iacute;culo e voltar para fechar o acesso &eacute; tempo o bastante para a a&ccedil;&atilde;o dos criminosos. Contar com um port&atilde;o eletr&ocirc;nico de qualidade &eacute; sempre uma boa op&ccedil;&atilde;o e o custo-benef&iacute;cio &eacute; altamente vantajoso.</p>\n\n<h2><span style="font-size:14px">SEGURAN&Ccedil;A INTEGRADA</span></h2>\n\n<p>Resid&ecirc;ncias em bairros abertos j&aacute; podem contar com um sistema de seguran&ccedil;a colaborativo. Hoje &eacute; poss&iacute;vel encontrar pacotes de seguran&ccedil;a compartilhada entre vizinhos. Vai viajar? O morador da casa ao lado pode ter acesso &agrave;s imagens&nbsp;do circuito de seguran&ccedil;a da sua casa, de outras casas e vice-versa. Quanto mais gente de olho, mais segura fica a vizinhan&ccedil;a.</p>\n\n<h2><span style="font-size:14px">ILUMINA&Ccedil;&Atilde;O EXTERNA</span></h2>\n\n<p>O escuro gera oportunidades para a&ccedil;&otilde;es criminosas. &Eacute; importante ter uma boa ilumina&ccedil;&atilde;o na frente de casa para evitar que pessoas mal intencionadas encontrem um lugar apropriado para se esconderem. Principalmente em v&atilde;os e recuos de port&otilde;es. Uma boa ilumina&ccedil;&atilde;o ajuda a inibir atos criminosos.</p>\n\n<h2><span style="font-size:14px">SEGURAN&Ccedil;A COMPLEMENTAR</span></h2>\n\n<p>Equipamentos complementares s&atilde;o excelentes. Investir em c&acirc;meras de seguran&ccedil;a, equipamentos para controle de acesso, sensores de movimento contra invas&atilde;o e para acionamento de luzes s&atilde;o algumas das op&ccedil;&otilde;es. Em conjunto com a seguran&ccedil;a integrada entre resid&ecirc;ncias &eacute; poss&iacute;vel contar tamb&eacute;m com o chamado Bot&atilde;o do P&acirc;nico, que pode ser acionado em caso de amea&ccedil;a, alertando os im&oacute;veis integrados ao sistema.</p>\n\n<p>Por fim, se toda precau&ccedil;&atilde;o n&atilde;o evitar a abordagem, o importante &eacute; n&atilde;o reagir. Nenhum bem &eacute; mais valioso que a nossa vida e a de quem a gente ama.</p>\n\n<p>Mora em condom&iacute;nio? Leia ent&atilde;o o post &lsquo;<a href="http://www.cimtel.com.br/noticias/5-dicas-para-tornar-seu-condominio-mais-seguro" target="_self"><strong>5 dicas para tornar seu condom&iacute;nio mais seguro</strong></a>&rsquo;. At&eacute; a pr&oacute;xima!</p>\n', 0, 0, 'seguranca-domiciliar-florianopolis-capa.png', 9),
(9, 1, 0, 1, 0, 'CFTV em Florianópolis: escolha a empresa certa para seu projeto', 'cftv-em-florianopolis-escolha-a-empresa-certa-para-seu-projeto', 'cftv em florianópolis', 'Dicas simples podem minimizar os riscos ao investir em CFTV. Não perca!', '2016-10-10', 'CFTV é um dos grandes aliados na luta contra a ação de criminosos', '<p><img alt="" src="/ckfinder/userfiles/images/cftv-em-florianopolis-blog.png" style="height:100%; width:100%" /></p>\n\n<p>O Circuito Fechado de TV (CFTV), tamb&eacute;m conhecido como sistema de seguran&ccedil;a por videomonitoramento, &eacute; um dos grandes aliados na luta contra a a&ccedil;&atilde;o de criminosos. Por isso &eacute; t&atilde;o importante contar com uma empresa qualificada na hora de escolher o fornecedor e implementador.</p>\n\n<p>Para n&atilde;o errar, vamos dar hoje algumas dicas de como escolher a empresa certa para planejar, fornecer os equipamentos e instalar tudo em seu condom&iacute;nio, empresa, ind&uacute;stria ou resid&ecirc;ncia quando o assunto for <strong>CFTV em Florian&oacute;polis</strong>.</p>\n\n<h2><strong><span style="font-size:14px">CREDIBILIDADE</span></strong></h2>\n\n<p>Uma boa empresa n&atilde;o precisa, necessariamente, ter anos de atua&ccedil;&atilde;o no mercado. Mas uma empresa s&oacute; segue trabalhando por longos per&iacute;odos se o servi&ccedil;o for bem feito, do contr&aacute;rio o mercado e a concorr&ecirc;ncia tratam de elimin&aacute;-la da disputa.&nbsp;</p>\n\n<p>Sendo assim, verifique o hist&oacute;rico da empresa que pensa em contratar. Verifique o que seus clientes falam dela, o porte dos clientes atendidos e os valores que permeiam o trabalho dela. Nas redes sociais, site da pr&oacute;pria empresa e em pesquisas nas ferramentas de busca da internet - como Google - n&atilde;o &eacute; dif&iacute;cil checar se a empresa preza por um bom atendimento e respeita seus clientes.</p>\n\n<h2><strong><span style="font-size:14px">EQUIPAMENTOS</span></strong></h2>\n\n<p>Boas empresas se associam a boas marcas. Desta forma, confira tamb&eacute;m quais s&atilde;o os equipamentos que o fornecedor oferece para garantir o bom funcionamento e tamb&eacute;m valorizar o investimento feito.</p>\n\n<h2><strong><span style="font-size:14px">ASSIST&Ecirc;NCIA</span></strong></h2>\n\n<p>N&atilde;o basta instalar tudo e dar as costas ao cliente. Verifique se a empresa que pretende contratar presta servi&ccedil;os de manuten&ccedil;&atilde;o - preventiva e corretiva - nos equipamentos e se conta com equipe dispon&iacute;vel para executar os servi&ccedil;os a qualquer hora do dia, qualquer dia da semana.&nbsp;</p>\n\n<p>Com medidas preventivas &eacute; poss&iacute;vel minimizar as falhas, mas equipamentos est&atilde;o sujeitos a problemas e, caso eles ocorram, voc&ecirc; n&atilde;o gostaria de ter a seguran&ccedil;a de sua fam&iacute;lia e de seus bens exposta por longos per&iacute;odos pela falta de uma assist&ecirc;ncia adequada.</p>\n\n<h2><span style="font-size:14px"><strong>ATENDIMENTO</strong></span></h2>\n\n<p>Solicite um or&ccedil;amento, ligue para a empresa e confira se o atendimento corresponde &agrave;s expectativas. Uma empresa que n&atilde;o passa confian&ccedil;a no pr&eacute;-venda provavelmente n&atilde;o ir&aacute; satisfazer seus anseios ap&oacute;s a negocia&ccedil;&atilde;o.</p>\n\n<p>Fazendo esses teste e verifica&ccedil;&otilde;es simples voc&ecirc; minimiza os riscos de investir em algo que pode pode se tornar uma dor de cabe&ccedil;a no futuro.&nbsp;</p>\n\n<p>Mora em Florian&oacute;polis e regi&atilde;o e n&atilde;o quer errar? Conte com o atendimento e a experi&ecirc;ncia da Cimtel no planejamento, instala&ccedil;&atilde;o e manuten&ccedil;&atilde;o de CFTV. S&atilde;o quase 30 anos dedicados ao segmento de automa&ccedil;&otilde;es e sistemas de seguran&ccedil;a. Confira nossas <a href="http://www.cimtel.com.br/catalogo/cftv" target="_self"><strong>solu&ccedil;&otilde;es em CFTV</strong></a>, nossos <a href="http://www.cimtel.com.br/servicos" target="_self"><strong>servi&ccedil;os</strong></a> e veja todas as vantagens de contar com a Cimtel!</p>\n', 0, 0, 'cftv-em-florianopolis-blog-capa.png', 4),
(10, 1, 0, 1, 0, 'Ação oferece avaliação e mês grátis na Assistência 24h para condomínio', 'acao-oferece-avaliacao-e-mes-gratis-na-assistencia-24h-para-condominio', 'segurança condominial', 'Renove ou tenha um novo projeto para a segurança do condomínio com as melhores condições. Veja!', '2016-10-21', 'Campanha da Cimtel para novos contratos de condomínios vai até 30 de novembro', '<p><img alt="" src="/ckfinder/userfiles/images/seguranca-condominial-florianopolis-blog.png" style="height:100%; width:100%" /></p>\n\n<p>Os equipamentos de <strong>seguran&ccedil;a do seu condom&iacute;nio</strong> est&atilde;o ultrapassados? Ou ent&atilde;o seu condom&iacute;nio sequer conta com um sistema de seguran&ccedil;a adequado e devidamente planejado? Agora &eacute; a hora de mudar essa situa&ccedil;&atilde;o!</p>\n\n<p>At&eacute; o final de novembro a Cimtel Tecnologia em Automa&ccedil;&atilde;o est&aacute; com uma grande a&ccedil;&atilde;o promocional que oferece <strong>avalia&ccedil;&atilde;o completa e o 1&ordm; m&ecirc;s gr&aacute;tis para novos contratos de Assist&ecirc;ncia 24 horas</strong>.</p>\n\n<h2><strong><span style="font-size:14px">COMO ADERIR</span></strong></h2>\n\n<p>Para aproveitar essa vantagem e contar com a assist&ecirc;ncia t&eacute;cnica da empresa que &eacute; refer&ecirc;ncia em qualidade e bom atendimento quando o assunto &eacute; sistema de seguran&ccedil;a em Florian&oacute;polis e regi&atilde;o, basta <a href="http://cimtel.rds.land/assistencia-24horas-condominios" target="_blank"><strong>preencher o formul&aacute;rio</strong></a> e esperar pelo contato da equipe Cimtel.</p>\n\n<h2><strong><span style="font-size:14px">VANTAGENS</span></strong></h2>\n\n<p>Com a Assist&ecirc;ncia 24 horas da Cimtel seu condom&iacute;nio garante atendimento completo preventivo e tamb&eacute;m em eventuais surpresas desagrad&aacute;veis.</p>\n\n<p>&nbsp;- Manuten&ccedil;&atilde;o preventiva: revis&atilde;o regular dos equipamentos para antecipar eventuais problemas e manter tudo funcionando como deve</p>\n\n<p>&nbsp;- Manuten&ccedil;&atilde;o corretiva: em caso de problemas, atendimento r&aacute;pido 24 horas por dia, 7 dias da semana.&nbsp;</p>\n\n<p>&nbsp;- Cobertura total: aten&ccedil;&atilde;o a todos os equipamentos de seguran&ccedil;a do condom&iacute;nio</p>\n\n<p>N&atilde;o perca mais tempo e aproveite j&aacute; essa mega a&ccedil;&atilde;o da Cimtel para novos contratos. <strong><a href="http://cimtel.rds.land/assistencia-24horas-condominios" target="_blank">Fa&ccedil;a seu cadastro</a></strong> e leve a discuss&atilde;o para a pr&oacute;xima reuni&atilde;o de cond&ocirc;minos. Seja o her&oacute;i do seu condom&iacute;nio e cuide da seguran&ccedil;a de todos garantindo o melhor investimento.</p>\n\n<p>Aproveite para ler tamb&eacute;m nosso post &lsquo; <a href="http://www.cimtel.com.br/noticias/5-dicas-para-tornar-seu-condominio-mais-seguro" target="_self"><strong>5 dicas para tornar seu condom&iacute;nio mais seguro</strong></a>&rsquo;.</p>\n', 0, 0, 'seguranca-condominial-florianopolis-blog-capa.png', 1);
INSERT INTO `gercont_noticias` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `url_titulo`, `keywords`, `description`, `data`, `chamada`, `texto`, `imagens`, `videos`, `capa`, `categoria_das_noticias`) VALUES
(11, 1, 0, 1, 0, 'Black Friday: condição imperdível para automação de portões', 'black-friday-condicao-imperdivel-para-automacao-de-portoes', 'automação de portões, portão automático', 'Automação de portões em Florianópolis é com a Cimtel! Veja', '2016-11-21', 'Seja para sua casa, para indicar ao condomínio onde mora ou então para sua empresa, a Cimtel tem a solução que você precisa', '<p><img alt="" src="/ckfinder/userfiles/images/black-friday-automacao-de-portoes-blog.png" style="width:100%" /></p>\n\n<p>O motor do seu port&atilde;o &eacute; lento ou j&aacute; n&atilde;o trabalha bem como em outros tempos? Pensando em parar de pegar chuva, frio ou mesmo se expor &agrave; a&ccedil;&atilde;o de bandidos toda vez que desce do carro para abrir o port&atilde;o na sua casa ou empresa.</p>\n\n<p>A <strong>Semana Black Friday da Cimtel</strong> oferece - entre os dias 21 e 25 de novembro - a melhor condi&ccedil;&atilde;o &nbsp;para voc&ecirc; fechar neg&oacute;cio e garantir mais seguran&ccedil;a e praticidade no seu dia a dia.</p>\n\n<h2><strong><span style="font-size:14px">DESCONTO</span></strong></h2>\n\n<p>A campanha &eacute; bem simples e para garantir <strong>20% de desconto</strong> na compra dos melhores equipamentos basta <a href="http://cimtel.rds.land/black-friday-automacao-de-portoes" target="_blank"><strong>deixar aqui</strong></a> seu contato. A equipe da Cimtel - que atende toda regi&atilde;o da Grande Florian&oacute;polis - retorna rapidamente para verificar a sua necessidade, indicar a melhor solu&ccedil;&atilde;o e passar um or&ccedil;amento com as condi&ccedil;&otilde;es especiais de Black Friday.</p>\n\n<h2><strong><span style="font-size:14px">NA MEDIDA</span></strong></h2>\n\n<p>Seja para sua casa, para indicar ao condom&iacute;nio onde mora ou ent&atilde;o para sua empresa, a Cimtel tem a solu&ccedil;&atilde;o que voc&ecirc; precisa. Analisando vari&aacute;veis como tamanho e peso do port&atilde;o, al&eacute;m do fluxo de passagem, a equipe t&eacute;cnica ir&aacute; apontar para as melhores op&ccedil;&otilde;es entre port&atilde;o basculante, deslizante ou at&eacute; cancelas autom&aacute;ticas.</p>\n\n<h2><span style="font-size:14px"><strong>QUALIDADE</strong></span></h2>\n\n<p>Al&eacute;m da alta qualidade dos equipamentos comercializados pela Cimtel, o cliente conta com uma garantia exclusiva que s&oacute; quem &eacute; refer&ecirc;ncia em atendimento quando o assunto &eacute; automa&ccedil;&atilde;o e sistemas de seguran&ccedil;a em Florian&oacute;polis pode dar. Essa garantia chega a 5 anos para alguns componentes como o sistema redutor (pe&ccedil;a principal do equipamento).</p>\n\n<p>Associando isso &agrave; instala&ccedil;&atilde;o feita pela equipe especializada a satisfa&ccedil;&atilde;o &eacute; garantida</p>\n\n<h2><strong><span style="font-size:14px">N&Atilde;O PERCA</span></strong></h2>\n\n<p>Vale refor&ccedil;ar que para participar basta <a href="http://cimtel.rds.land/black-friday-automacao-de-portoes" target="_blank"><strong>clicar aqui</strong></a> e preencher alguns dados de contato, que nossa equipe retorna para voc&ecirc;. Conte com a Cimtel e seus 28 anos de experi&ecirc;ncia de mercado para dar a solu&ccedil;&atilde;o que voc&ecirc; precisa com uma condi&ccedil;&atilde;o exclusiva!</p>\n', 0, 0, 'black-friday-automacao-de-portoes-blog-capa.png', 7),
(12, 1, 0, 1, 0, '6 soluções para ampliar a segurança no seu condomínios', '6-solucoes-para-ampliar-a-seguranca-no-seu-condominios', 'segurança em condomínio', 'Juntos ou separados, esses equipamentos vão tornar seu condomínio mais seguro. Veja!', '2016-11-23', 'Segurança condominial é assunto sério. Veja com o que contar!', '<p><img alt="" src="/ckfinder/userfiles/images/solucoes-em-seguranca-para-condominios-blog.png" style="width:100%" /></p>\n\n<p>A demanda crescente obriga condom&iacute;nios a investirem cada vez mais em seguran&ccedil;a para manter moradores e seus bens a salvo de amea&ccedil;as externas. Muitos deles dependem, exclusivamente, do bom funcionamento de solu&ccedil;&otilde;es integradas em tecnologia e automa&ccedil;&atilde;o, e mesmo aqueles que disp&otilde;em de recurso humano na prote&ccedil;&atilde;o do patrim&ocirc;nio tamb&eacute;m n&atilde;o podem dispensar essas tecnologias.</p>\n\n<p>Vamos elencar nesse post 6 dessa solu&ccedil;&otilde;es, que sozinhas, combinadas ou totalmente integradas, aumentam muito a <strong>seguran&ccedil;a dos condom&iacute;nios</strong>.</p>\n\n<h2><strong><span style="font-size:14px">SISTEMA DE ALARME</span></strong></h2>\n\n<p>Talvez o mais utilizado e difundido sistema de seguran&ccedil;a, o alarme sonoro &eacute; muito efetivo para inibir a evolu&ccedil;&atilde;o da a&ccedil;&atilde;o de invasores, tendo um grande efeito moral. Os modelos atuais dispon&iacute;veis costumam ser muito pr&aacute;ticos e facilmente integr&aacute;veis a um projeto maior de seguran&ccedil;a.</p>\n\n<h2><strong><span style="font-size:14px">CERCA EL&Eacute;TRICA</span></strong></h2>\n\n<p>Tamb&eacute;m muito utilizado em condom&iacute;nios, resid&ecirc;ncias e empresas, a cerca el&eacute;trica d&aacute; conta de proteger da invas&atilde;o por cima dos muros que cercam a propriedade. O uso &eacute; bem simples, contribuindo tanto em condom&iacute;nios que n&atilde;o contam com porteiros e vigias, como permitindo que naqueles que os t&ecirc;m, esse recurso humano importante possa ficar com sua aten&ccedil;&atilde;o mais voltada para os acessos principais, como portas e port&otilde;es.</p>\n\n<h2><strong><span style="font-size:14px">C&Acirc;MERAS DE SEGURAN&Ccedil;A</span></strong></h2>\n\n<p>A identifica&ccedil;&atilde;o visual &eacute; uma grande forma de preven&ccedil;&atilde;o. Al&eacute;m de inibir a a&ccedil;&atilde;o de bandidos, s&atilde;o perfeitas para auxiliar em caso de perdas j&aacute; ocorridas. Elas podem integrar um projeto mais complexo de CFTV (circuito fechado de televis&atilde;o) para monitoramento em tempo real, ou mesmo atuarem apenas captando e gravando imagens externas e internas do condom&iacute;nio.</p>\n\n<h2><strong><span style="font-size:14px">PORTEIRO ELETR&Ocirc;NICO</span></strong></h2>\n\n<p>Pode ser um porteiro eletr&ocirc;nico convencional ou um v&iacute;deo-porteiro, o que dita &eacute; a necessidade do condom&iacute;nio e sua capacidade de investimento. S&atilde;o indispens&aacute;veis para a comunica&ccedil;&atilde;o interna e externa (da portaria com o port&atilde;o, do port&atilde;o com o apartamento ou de apartamento para apartamento) e um &oacute;timo aliado no controle de quem entra.</p>\n\n<h2><strong><span style="font-size:14px">FECHADURA ELETROMAGN&Eacute;TICA</span></strong></h2>\n\n<p>Com uma &oacute;tima rela&ccedil;&atilde;o custo-benef&iacute;cio, a fechadura eletromagn&eacute;tica (ou fechadura eletro&iacute;m&atilde;) e extremamente pr&aacute;tica e segura. O princ&iacute;pio simples de uma placa de metal, uma placa de &iacute;m&atilde; e um temporizador que corta a atra&ccedil;&atilde;o para libera&ccedil;&atilde;o do acesso (por bot&atilde;o ou senha) tamb&eacute;m &eacute; muito difundido e se combina perfeitamente com outras tecnologias voltadas &agrave; seguran&ccedil;a condominial.</p>\n\n<h2><strong><span style="font-size:14px">AUTOMA&Ccedil;&Atilde;O DE PORT&Otilde;ES</span></strong></h2>\n\n<p>Um motor confi&aacute;vel e r&aacute;pido regendo um bom projeto de automa&ccedil;&atilde;o de port&atilde;o tamb&eacute;m &eacute; importante. Vale lembrar que, por menor que seja, o fluxo de entrada e sa&iacute;da do estacionamento de qualquer condom&iacute;nio exige bastante do motor, sendo necess&aacute;ria uma solu&ccedil;&atilde;o adequada para cada caso. Al&eacute;m disso, motores muito lentos podem facilitar a entrada de invasores, sendo este o momento de maior exposi&ccedil;&atilde;o na seguran&ccedil;a de um condom&iacute;nio. Principalmente, naqueles que n&atilde;o contam com vigil&acirc;ncia humana.</p>\n\n<p>Essas foram algumas dicas de equipamentos que voc&ecirc; pode e deve utilizar - ou cobrar que sejam utilizados - em seu condom&iacute;nio. Para que a solu&ccedil;&atilde;o atenda plenamente a necessidade e deixe o ambiente realmente seguro &eacute; sempre uma boa ideia contar com uma empresa especializada.</p>\n\n<p>Mais informa&ccedil;&otilde;es? Leia tamb&eacute;m nosso post &lsquo;<a href="http://www.cimtel.com.br/noticias/seguranca-para-condominios-em-florianopolis-e-com-a-cimtel" target="_self"><strong>Seguran&ccedil;a para condom&iacute;nios em Florian&oacute;polis &eacute; com a Cimtel</strong></a>&rsquo;. At&eacute; breve!</p>\n', 0, 0, 'solucoes-em-seguranca-para-condominios-blog-capa.png', 5),
(13, 1, 0, 1, 0, 'Sistema CFTV: veja o que levar em conta  ', 'sistema-cftv-veja-o-que-levar-em-conta-', 'sistema CFTV', 'Faça seu investimento valer a pena escolhendo corretamente o sistema CFTV', '2016-12-22', 'Faça as considerações certas para garantir a adequação do investimento às necessidades', '<p><img alt="" src="/ckfinder/userfiles/images/sistema-cftv-florianopolis-blog-interna.png" style="height:100%; width:100%" /></p>\n\n<p>Seja para sua casa, condom&iacute;nio ou empresa, voc&ecirc; decidiu que &eacute; hora de investir em um <strong>sistema CFTV</strong>. Contudo, n&atilde;o faltam op&ccedil;&otilde;es no mercado e surge a d&uacute;vida: o que &eacute; preciso levar em conta na hora de escolher o sistema mais adequado &agrave; sua necessidade?</p>\n\n<p>Para ajudar nessa miss&atilde;o, elencamos algumas dicas simples para voc&ecirc; n&atilde;o errar:</p>\n\n<h2><strong><span style="font-size:14px">ASSIST&Ecirc;NCIA E SUPORTE</span></strong></h2>\n\n<p>Comprar pela internet &eacute; sempre muito tentador, mas nesse caso pode ser uma escolha ruim. O ideal aqui &eacute; comprar de uma empresa que possa prestar suporte e toda assist&ecirc;ncia t&eacute;cnica necess&aacute;ria de que voc&ecirc; possa necessitar. Opte por empresas consolidadas no mercado e geograficamente pr&oacute;ximas ao im&oacute;vel, para ter o atendimento mais &aacute;gil.</p>\n\n<h2><strong><span style="font-size:14px">PRE&Ccedil;O</span></strong></h2>\n\n<p>O fator pre&ccedil;o, evidentemente, sempre entra na conta de quem vai fazer o investimento. Mas ao falar em seguran&ccedil;a para voc&ecirc;, sua fam&iacute;lia, empresa e bens, &eacute; sempre imprescind&iacute;vel observar, antes de mais nada, a qualidade do que se est&aacute; adquirindo. Apostar no mais barato pode acabar n&atilde;o gerando o resultado esperado, transformando seu investimento em um custo sem retorno.</p>\n\n<h2><strong><span style="font-size:14px">ESPECIFICA&Ccedil;&Otilde;ES T&Eacute;CNICAS</span></strong></h2>\n\n<p>Certifique-se dos limites e especifica&ccedil;&otilde;es do equipamento que vai compor seus sistema CFTV. Algumas vari&aacute;veis como luz, qualidade da imagem, &acirc;ngulos para instala&ccedil;&atilde;o e dist&acirc;ncia de cobertura s&atilde;o importantes na hora de fazer o investimento.</p>\n\n<h2><strong><span style="font-size:14px">CABOS</span></strong></h2>\n\n<p>Adquirir os equipamentos certos &eacute; um passo importante, mas &eacute; preciso ficar atento ao que n&atilde;o &eacute; t&atilde;o vis&iacute;vel, quanto os cabos. Busque produtos homologados. O custo do cabeamento &eacute; relativamente pequeno na composi&ccedil;&atilde;o do investimento total em um sistema CFTV, mas pode comprometer muito o resultado final.</p>\n\n<p>O assunto &eacute; complexo e a melhor op&ccedil;&atilde;o &eacute; sempre contar com uma empresa especializada no assunto. Na regi&atilde;o da Grande Florian&oacute;polis voc&ecirc; pode contar com os quase 30 anos de experi&ecirc;ncia da Cimtel. S&atilde;o centenas de clientes atendidos plenamente em suas necessidades, com todo suporte que voc&ecirc; precisa para fazer seu investimento valer a pena. <strong><a href="http://www.cimtel.com.br/contato" target="_self">Clique aqui</a></strong> e solicite seu or&ccedil;amento.</p>\n\n<p>Quer saber mais sobre o assunto? Leia tamb&eacute;m nosso post &lsquo;<strong><a href="http://www.cimtel.com.br/noticias/cftv/cftv-em-florianopolis-escolha-a-empresa-certa-para-seu-projeto" target="_self">CFTV em Florian&oacute;polis: escolha a empresa certa para seu projeto</a></strong>&rsquo;. Boa leitura e at&eacute; a pr&oacute;xima!</p>\n', 0, 0, 'sistema-cftv-florianopolis-blog-capa.png', 4),
(14, 1, 0, 1, 0, '5 motivos para investir em controle de acesso por biometria', '5-motivos-para-investir-em-controle-de-acesso-por-biometria', 'controle de acesso por biometria', 'Mais segurança para residências, condomínios e indústrias. Confira as vantagens do controle de acesso por biometria!', '2016-12-10', 'A identificação biométrica vem sendo cada vez mais utilizada, ganhando espaço em decorrência de sua praticidade e alto nível de segurança', '<p><img alt="" src="/ckfinder/userfiles/images/controle-de-acesso-por-biometria-blog.png" style="width:100%" /></p>\n\n<p>A identifica&ccedil;&atilde;o biom&eacute;trica vem sendo cada vez mais utilizada, ganhando espa&ccedil;o em decorr&ecirc;ncia de sua praticidade e alto n&iacute;vel de seguran&ccedil;a. Condom&iacute;nios residenciais, condom&iacute;nios comerciais e ind&uacute;strias v&ecirc;m investindo cada vez mais nessa tecnologia e vamos apontar neste post 5 motivos que tornaram o investimento em <strong>controle de acesso por biometria</strong> uma op&ccedil;&atilde;o extremamente vantajosa.</p>\n\n<h2><span style="font-size:14px">INVESTIMENTO X RETORNO</span></h2>\n\n<p>A rela&ccedil;&atilde;o custo-benef&iacute;cio do controle de acesso biom&eacute;trico &eacute; realmente muito vantajosa. Seu condom&iacute;nio ou empresa ganha muito em seguran&ccedil;a partindo de um investimento relativamente baixo. Destaca-se tamb&eacute;m a confiabilidade e durabilidade da maioria desses sistemas de seguran&ccedil;a, reduzindo o custo com manuten&ccedil;&atilde;o.</p>\n\n<h2><span style="font-size:14px">ACESSOS RESTRITOS</span></h2>\n\n<p>Todos os moradores do condom&iacute;nio ou empregados da empresa precisam ter acesso a todos os ambientes? O morador do bloco A precisa ter acesso &agrave; porta do bloco B? Com o controle de acesso por biometria &eacute; poss&iacute;vel determinar quais ambientes poder&atilde;o ser acessados por determinado cadastro/usu&aacute;rio.&nbsp;</p>\n\n<h2><span style="font-size:14px">ANTI-FRAUDE</span></h2>\n\n<p>Com a identifica&ccedil;&atilde;o biom&eacute;trica as chances de fraude caem drasticamente. Fica praticamente imposs&iacute;vel clonar a digital de uma pessoa e fazer dessa informa&ccedil;&atilde;o algo &lsquo;aceit&aacute;vel&rsquo; pelo sistema.</p>\n\n<h2><span style="font-size:14px">INFORMA&Ccedil;&Otilde;ES DETALHADAS</span></h2>\n\n<p>O sistema de controle de acesso por biometria permite armazenar informa&ccedil;&otilde;es detalhadas e importantes, como o hor&aacute;rio preciso que um determinado cadastro acessou - ou tentou acessar - um determinado ambiente.</p>\n\n<h2><span style="font-size:14px">AUTOMA&Ccedil;&Atilde;O PREDIAL</span></h2>\n\n<p>Por meio do controle de acesso detalhado o sistema pode ser integrado a um projeto maior de automa&ccedil;&atilde;o em que, por exemplo, a luz de uma sala que se apaga automaticamente ao identificar que n&atilde;o h&aacute; ningu&eacute;m ali.</p>\n\n<p>Essas s&atilde;o apenas algumas das principais vantagens do controle de acesso por biometria e, certamente, sua empresa, condom&iacute;nio ou at&eacute; mesmo casa podem ganhar muito em seguran&ccedil;a com a instala&ccedil;&atilde;o do equipamento adequado, pela equipe certa.</p>\n\n<p>Gostou da ideia? <strong><a href="http://www.cimtel.com.br/contato" target="_self">Fa&ccedil;a contato</a></strong> com a Cimtel Tecnologia em Automa&ccedil;&atilde;o e tenha o melhor or&ccedil;amento, perfeitamente adequado as suas necessidades. Leia tamb&eacute;m nosso post &lsquo;<strong><a href="http://www.cimtel.com.br/noticias/seguranca-condominial/6-solucoes-para-ampliar-a-seguranca-no-seu-condominios" target="_self">6 solu&ccedil;&otilde;es para ampliar a seguran&ccedil;a no seu condom&iacute;nio</a></strong>&rsquo;. Boa leitura e at&eacute; a pr&oacute;xima!</p>\n', 0, 0, 'controle-de-acesso-por-biometria-blog-capa.png', 10),
(15, 1, 0, 1, 0, 'Conheça as vantagens das portas automáticas', 'conheca-as-vantagens-das-portas-automaticas', 'portas automáticas', 'Veja porque vale a pena investir em portas automáticas!', '2017-01-22', 'Seja para condomínios, clubes, shoppings, lojas, restaurantes, supermercados ou qualquer ambiente com grande fluxo de pessoas, as portas automáticas configuram uma ótima solução', '<p><img alt="" src="/ckfinder/userfiles/images/vantagens-da-porta-automatica-blog.png" style="width:100%" /></p>\n\n<p>Seja para condom&iacute;nios, clubes, shoppings, lojas, restaurantes, supermercados ou qualquer ambiente com grande fluxo de pessoas, as <strong>portas autom&aacute;ticas</strong> configuram uma &oacute;tima solu&ccedil;&atilde;o, tanto na quest&atilde;o est&eacute;tica quanto da praticidade.</p>\n\n<p>Deslizantes e acionadas por detectores de movimentos, essas portas facilitam o tr&acirc;nsito de pessoas sem comprometer a termo-ac&uacute;stica do ambiente, contribuindo para o bom funcionamento dos sistemas de climatiza&ccedil;&atilde;o.</p>\n\n<h2><strong><span style="font-size:14px">PERSONALIZA&Ccedil;&Atilde;O</span></strong></h2>\n\n<p>O sistema de detec&ccedil;&atilde;o de movimentos pode ser ajustado em sua sensibilidade e &acirc;ngulo de capta&ccedil;&atilde;o. Esse sistema tamb&eacute;m pode ser substitu&iacute;do por acionamento via controle remoto ou integrado com um sistema de controle de acesso, por exemplo.</p>\n\n<p>Al&eacute;m disso, &eacute; poss&iacute;vel tamb&eacute;m personalizar o equipamento quanto ao tempo de pausa da porta aberta, o limite de abertura e a velocidade.</p>\n\n<h2><strong><span style="font-size:14px">SEGURAN&Ccedil;A</span></strong></h2>\n\n<p>Com a devida instala&ccedil;&atilde;o, programa&ccedil;&atilde;o e manuten&ccedil;&atilde;o, as portas autom&aacute;ticas deslizantes s&atilde;o extremamente seguras. E se faltar energia? Sem problemas. As melhores marcas oferecem baterias de emerg&ecirc;ncia de s&eacute;rie que garantem at&eacute; 100 ciclos de abertura e fechamento. Passado esse tempo, em acordo com o que foi programado, ela ficar&aacute; totalmente aberta ou fechada.</p>\n\n<h2><strong><span style="font-size:14px">EM FLORIAN&Oacute;POLIS</span></strong></h2>\n\n<p>Pensou em portas autom&aacute;ticas em Florian&oacute;polis? Voc&ecirc; pode contar com o atendimento refer&ecirc;ncia da Cimtel Tecnologia em Automa&ccedil;&atilde;o. S&atilde;o quase 30 anos atendendo projetos de todos os portes na regi&atilde;o da Grande Florian&oacute;polis, oferecendo as melhores marcas e servi&ccedil;os.</p>\n\n<p>Quer saber mais? <strong><a href="https://www.cimtel.com.br/contato" target="_self">Fa&ccedil;a contato</a></strong> que n&oacute;s retornaremos para verificar sua necessidade espec&iacute;fica e apresentar a melhor proposta.</p>\n\n<p>Leia tamb&eacute;m nosso post &lsquo;<a href="https://www.cimtel.com.br/noticias/controle-de-acesso/5-motivos-para-investir-em-controle-de-acesso-por-biometria" target="_self"><strong>5 motivos para investir em controle de acesso por biometria</strong></a>&rsquo;. at&eacute; breve!</p>\n', 0, 0, 'vantagens-da-porta-automatica-blog-capa.png', 11),
(16, 1, 0, 1, 0, 'Assistência 24 horas garante bom funcionamento dos equipamentos de segurança e acesso do condomínio', 'assistencia-24-horas-garante-bom-funcionamento-dos-equipamentos-de-seguranca-e-acesso-do-condominio', 'assistência 24 horas', 'Segurança condominial em Florianópolis. Veja porque contar com o serviço de assistência 24 horas!', '2017-01-31', 'Segurança condominial em Florianópolis. Veja porque contar com o serviço de assistência 24 horas!', '<p><img alt="" src="/ckfinder/userfiles/images/assistencia-24-horas-blog.png" style="width:100%" /></p>\n\n<p>Voc&ecirc; chega no s&aacute;bado de madrugada em casa, ap&oacute;s um passeio com os amigos, abre o port&atilde;o da garagem do condom&iacute;nio para entrar e na hora de fechar o sistema trava. Ou ent&atilde;o a cerca el&eacute;trica ou o sistema de portaria eletr&ocirc;nica apresentam problemas, expondo a seguran&ccedil;a da sua fam&iacute;lia e dos demais moradores at&eacute; o dia seguinte ou por todo o final de semana, at&eacute; que um t&eacute;cnico possa fazer uma visita e solucionar o problema.</p>\n\n<p>&Eacute; justamente para evitar esse tipo de situa&ccedil;&atilde;o que algumas empresas dedicadas &agrave; seguran&ccedil;a condominial e solu&ccedil;&otilde;es em automa&ccedil;&atilde;o oferecem o servi&ccedil;o de Assist&ecirc;ncia 24 horas. Os pacotes variam, mas em geral s&atilde;o extremamente vantajosos tanto para condom&iacute;nios que contam com portaria 24 horas, quanto naqueles que n&atilde;o contam contam com um funcion&aacute;rio designado para a portaria.</p>\n\n<p>Entre as principais vantagens desse tipo de atendimento est&atilde;o:</p>\n\n<h2><strong><span style="font-size:14px">7 DIAS DA SEMANA - 24 HORAS POR DIA</span></strong></h2>\n\n<p>Essas empresas contam com uma equipe dedicada a atender com a m&aacute;xima efici&ecirc;ncia poss&iacute;vel, a qualquer hora do dia, em qualquer dia da semana, o ano todo. Voc&ecirc; garante o funcionamento integral do sistema de seguran&ccedil;a e de acesso com a manuten&ccedil;&atilde;o corretiva, evitando brechas na seguran&ccedil;a.</p>\n\n<h2><strong><span style="font-size:14px">MANUTEN&Ccedil;&Atilde;O PREVENTIVA</span></strong></h2>\n\n<p>Alguns atendimento diferenciados n&atilde;o se preocupam apenas com a corre&ccedil;&atilde;o, mas tamb&eacute;m fazem, periodicamente, a manuten&ccedil;&atilde;o preventiva a fim de evitar que os equipamentos venham a apresentar problemas.</p>\n\n<p>Na regi&atilde;o da Grande Florian&oacute;polis, a melhor op&ccedil;&atilde;o quando se fala em seguran&ccedil;a condominial e Assist&ecirc;ncia 24 horas &eacute; a Cimtel Tecnologia em Automa&ccedil;&atilde;o. S&atilde;o quase tr&ecirc;s d&eacute;cadas atendendo com agilidade e qualidade centenas de clientes de todos os portes, sempre com uma solu&ccedil;&atilde;o personalizada.</p>\n\n<p><strong><a href="https://www.cimtel.com.br/contato" target="_self">Fa&ccedil;a contato</a></strong>, solicite uma visita e garanta a seguran&ccedil;a e o bom funcionamento dos equipamentos automatizados do seu condom&iacute;nio a todo momento. Mais seguran&ccedil;a para seus bens, sua fam&iacute;lia e para seus vizinhos.</p>\n\n<p>Mais conte&uacute;do relevante? Leia tamb&eacute;m nosso post: &lsquo;<a href="https://www.cimtel.com.br/noticias/cftv/sistema-cftv-veja-o-que-levar-em-conta-" target="_self"><strong>Sistema CFTV: veja o que levar em conta</strong></a>&rsquo;. Boa leitura e at&eacute; breve!</p>\n', 0, 0, 'assistencia-24-horas-blog-capa.png', 1),
(17, 1, 0, 1, 0, 'Conheça medidas preventivas contra assalto em sua empresa', 'conheca-medidas-preventivas-contra-assalto-em-sua-empresa', 'segurança', 'Precisamos estar preparados para todos os tipos de situações. E infelizmente uma situação que se tornou frequente nos dias de hoje, são os assaltos. Então precisamos tomar cuidado e se prevenir com todas as medidas preventivas possíveis. Conheça algumas delas:', '2017-03-28', 'Precisamos estar preparados para todos os tipos de situações. E infelizmente uma situação que se tornou frequente nos dias de hoje, são os assaltos. Então precisamos tomar cuidado e se prevenir com todas as medidas preventivas possíveis. Conheça algumas delas:', '<p><img alt="" src="/ckfinder/userfiles/images/seguranca-empresa.jpg" style="height:auto; width:100%" /></p>\n\n<p>Precisamos estar preparados para todos os tipos de situa&ccedil;&otilde;es. E infelizmente uma situa&ccedil;&atilde;o que se tornou frequente nos dias de hoje, s&atilde;o os assaltos. Ent&atilde;o precisamos tomar cuidado e se prevenir com todas as medidas preventivas poss&iacute;veis. Conhe&ccedil;a algumas delas:<br />\nIdentificar seus riscos: Esse &eacute; um item de extrema import&acirc;ncia para quem tem empresa e pode-se dizer o primeiro passo para evitar assaltos. Come&ccedil;ando por analisar aonde sua empresa est&aacute; situada, qual a vizinhan&ccedil;a, se &eacute; um local de f&aacute;cil acesso, onde precisa de mais ilumina&ccedil;&atilde;o, onde ficam as sa&iacute;das de emerg&ecirc;ncia e por ai vai.&nbsp;</p>\n\n<h2>Fim de expediente:</h2>\n\n<p>Seja de quem for a responsabilidade de trancar a empresa no final do expediente deve ter total aten&ccedil;&atilde;o e controle de tudo. Fechar janelas, fechar persianas ou cortinas, trancar bem as portas de todos os compartimentos se for preciso, fechar portas e gavetas para maior organiza&ccedil;&atilde;o, ativar os alarmes, e tudo mais que precisar para garantir a seguran&ccedil;a. E nem &eacute; preciso dizer que tal pessoa a ser respons&aacute;vel por essa fun&ccedil;&atilde;o deve ser extremamente confi&aacute;vel, n&atilde;o?&nbsp;</p>\n\n<h2>Ilumina&ccedil;&atilde;o:</h2>\n\n<p>Mantenha tudo muito bem iluminado! Iluminar adequadamente todos os lados exteriores da sua empresa, incluindo becos e estacionamento, utilizando lumin&aacute;rias anti-vandalismo. Como a maioria dos roubos de empresas ocorrem &agrave; noite quando est&aacute; escuro, a ilumina&ccedil;&atilde;o serve como um dos impedimentos mais importantes.&nbsp;</p>\n\n<h2>Somente o necess&aacute;rio:</h2>\n\n<p>As caixas registradoras s&atilde;o o alvo principal dos ladr&otilde;es. Na medida do poss&iacute;vel, deve-se evitar manter quantidades desnecess&aacute;rias de dinheiro nelas. Deixar sempre, somente o necess&aacute;rio de dinheiro. Esta &eacute; a melhor maneira de evitar ser v&iacute;tima de um roubo. #Dica #Seguran&ccedil;a #Empresarial</p>\n\n<h2>Invista em Sistema de Monitoramento:</h2>\n\n<p>Uma das melhores medidas preventivas tanto durante o funcionamento da empresa, quanto nos momentos que est&aacute; fechada - &eacute; investir em um bom sistema de seguran&ccedil;a, com alarme, c&acirc;meras e monitoramento 24 horas. Esses equipamentos ajudam na hora de intimidar as pessoas mal-intencionadas. Por isso &eacute; importante tamb&eacute;m ter sinaliza&ccedil;&atilde;o e avisos de seguran&ccedil;a, avisando que a empresa &eacute; monitorada e que tem sistema de seguran&ccedil;a.&nbsp;</p>\n\n<p>Agora que voc&ecirc; j&aacute; conhece algumas medidas preventivas contra assaltos na sua empresa, que tal coloc&aacute;-las em pr&aacute;tica? Vem conhecer mais sobre seguran&ccedil;a na Cimtel.</p>\n', 0, 0, 'seguranca-empresa.jpg', 6),
(18, 1, 0, 1, 0, 'Saiba a importância dos sistemas de alarme de incêndio', 'saiba-a-importancia-dos-sistemas-de-alarme-de-incendio', 'Segurança, Alarme, Incêncio', 'A melhor maneira de se combater um incêndio é evitá-lo! ', '2016-06-27', 'A melhor maneira de se combater um incêndio é evitá-lo! ', '<p><img alt="" src="/ckfinder/userfiles/images/incendio.png" style="height:auto; width:100%" /></p>\n\n<p>A melhor maneira de se combater um inc&ecirc;ndio &eacute; evit&aacute;-lo! &Eacute; ai que entra a import&acirc;ncia dos sistemas de alarme de inc&ecirc;ndio, foram desenvolvidos meios de se detectar, atrav&eacute;s de sensores especiais (detectores de fuma&ccedil;a, de chama, de temperatura, etc), possibilitando assim o imediato alarme de alerta e o combate precoce do fogo, antes que este venha a se transformar num risco de perda de vidas e patrim&ocirc;nio.<br />\nOs sistemas de alarme de inc&ecirc;ndio e ilumina&ccedil;&atilde;o de emerg&ecirc;ncia, al&eacute;m de obrigat&oacute;rios na maioria dos empreendimentos coletivos, tratam-se ainda de sistemas de seguran&ccedil;a para vida, por isso a escolha de equipamentos adequados e de uma empresa tecnicamente capaz, respons&aacute;vel e principalmente habilitada para perfeita execu&ccedil;&atilde;o dos trabalhos de instala&ccedil;&atilde;o e assist&ecirc;ncia t&eacute;cnica, &eacute; fundamental para o sucesso de qualquer projeto.</p>\n\n<h2>- SISTEMA DETEC&Ccedil;&Atilde;O E ALARME SISTEMAS CONVENCIONAIS&nbsp;</h2>\n\n<p>Neste sistema n&atilde;o &eacute; poss&iacute;vel identificar individualmente cada dispositivo &ndash; indicado para pequenas e m&eacute;dias instala&ccedil;&otilde;es.</p>\n\n<h2>- SISTEMAS ENDERE&Ccedil;&Aacute;VEIS&nbsp;</h2>\n\n<p>Um protocolo de comunica&ccedil;&atilde;o faz com o sistema Endere&ccedil;&aacute;vel reconhe&ccedil;a qual foi o dispositivo &ldquo;em alarme&rdquo;, assim como registra este evento.&nbsp;</p>\n\n<h2>- SISTEMAS INTELIGENTES</h2>\n\n<p>Sistema capaz de se auto-inspeccionar e auto-verificar. O sistema verifica integralmente todos os detectores, acionadores manuais, interfaces, conex&otilde;es e cabos.&nbsp;</p>\n\n<h2>- DETECTORES RESIDENCIAIS&nbsp;</h2>\n\n<p>Operam sozinho, instala&ccedil;&atilde;o f&aacute;cil, ligado na energia ou bateria.</p>\n\n<p><br />\nA CIMTEL mant&eacute;m parceria com empresas cuja tecnologia &eacute; desenvolvida por um grupo composto de engenheiros e t&eacute;cnicos com especializa&ccedil;&atilde;o em el&eacute;trica, eletr&ocirc;nica, seguran&ccedil;a, automa&ccedil;&atilde;o e mec&acirc;nica. Este trabalho de desenvolvimento tecnol&oacute;gico garante produtos com caracter&iacute;sticas adequadas e assist&ecirc;ncia ao mercado brasileiro. O principal parceiro da CIMTEL est&aacute; presente no Comit&ecirc; Brasileiro de Seguran&ccedil;a contra Inc&ecirc;ndio, respons&aacute;vel pela cria&ccedil;&atilde;o das normas para o setor.<br />\nA CIMTEL tamb&eacute;m oferece, start-up, elabora&ccedil;&atilde;o de laudos, testes, aferi&ccedil;&otilde;es, treinamento e consultoria em toda linha de sistemas de alarme contra inc&ecirc;ndio e luz de emerg&ecirc;ncia.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 0, 0, 'incendio.png', 9),
(19, 1, 0, 1, 0, 'Como deixar sua vida mais fácil e segura com a Consultoria Técnica?', 'como-deixar-sua-vida-mais-facil-e-segura-com-a-consultoria-tecnica', 'Consultoria Técnica, Segurança', 'Você conhece o serviço de Consultoria Técnica da Cimtel? Não? Então vem conferir todas as vantagens que esse serviço traz. ', '2016-06-09', 'Você conhece o serviço de Consultoria Técnica da Cimtel? Não? Então vem conferir todas as vantagens que esse serviço traz. ', '<p><img alt="" src="/ckfinder/userfiles/images/consultoria-tecnica.jpg" style="height:auto; width:100%" /></p>\n\n<p>Voc&ecirc; conhece o servi&ccedil;o de Consultoria T&eacute;cnica da Cimtel? N&atilde;o? Ent&atilde;o vem conferir todas as vantagens que esse servi&ccedil;o traz.&nbsp;<br />\n&nbsp;&nbsp; &nbsp;O servi&ccedil;o de consultoria t&eacute;cnica tem como objetivo principal fornecer aos clientes a garantia de que os investimentos supram integralmente as necessidades que envolvem tecnologia, seguran&ccedil;a, controle, funcionalidade, durabilidade, atendimento p&oacute;s-venda e p&oacute;s-instala&ccedil;&atilde;o, na certeza de que todo investimento traga resultados imediatos, de m&eacute;dio e de longo prazo, oferecendo o melhor custo em fun&ccedil;&atilde;o do melhor e mais abrangente benef&iacute;cio.&nbsp;<br />\n&nbsp;&nbsp; &nbsp;Ent&atilde;o, o processo de consultoria t&eacute;cnica se resume em tr&ecirc;s passos principais, que s&atilde;o:&nbsp;<br />\n<strong>1) Defini&ccedil;&atilde;o da abrang&ecirc;ncia do projeto de seguran&ccedil;a do empreendimento</strong>, como por exemplo: an&aacute;lise de possibilidade de roubos, furtos, vandalismos, controle de fluxo de pedestres e ve&iacute;culos, localiza&ccedil;&atilde;o e cobertura inicial dos equipamentos, entre outros.<br />\n<strong>2) An&aacute;lise completa do empreendimento</strong>, verificando os pontos vulner&aacute;veis, as possibilidades de implanta&ccedil;&atilde;o de rotinas, a possibilidade de implanta&ccedil;&atilde;o de tecnologias de detec&ccedil;&atilde;o e controle com suas respectivas estruturas de implanta&ccedil;&atilde;o e funcionamento. Essa parte &eacute; feita com o acompanhamento do cliente, visando adequar o projeto a suas particularidades.&nbsp;<br />\n<strong>3) A especifica&ccedil;&atilde;o t&eacute;cnica de todos os equipamentos necess&aacute;rios na nova estrutura</strong> (exemplo: cftv, controle de acesso, alarmes, cercas eletr&ocirc;nicas, grades, automa&ccedil;&otilde;es, porteiros eletr&ocirc;nicos, telas), ou seja, tudo que for definido juntamente com o cliente para aplica&ccedil;&atilde;o. Juntamente com as especifica&ccedil;&otilde;es t&eacute;cnicas a CIMTEL apresentar&aacute; o plano de implanta&ccedil;&atilde;o, incluindo toda infraestrutura necess&aacute;ria, com um esquema completo de apresenta&ccedil;&atilde;o visual que inclui fotos do local, desenhos, medidas, loca&ccedil;&atilde;o de equipamentos, tubula&ccedil;&otilde;es, acess&oacute;rios e cabeamentos.&nbsp;<br />\n&nbsp;&nbsp; &nbsp;Com projeto de seguran&ccedil;a e controle j&aacute; pronto, a CIMTEL apresentar&aacute; ainda as propostas comerciais para fornecimento dos equipamentos, insumos, infraestrutura e m&atilde;o de obra necess&aacute;ria para implanta&ccedil;&atilde;o completa do novo sistema de seguran&ccedil;a e controle.<br />\n&nbsp;</p>\n\n<h2 style="text-align:center">&nbsp;&nbsp; &nbsp;RELAT&Oacute;RIO DE SEGURAN&Ccedil;A</h2>\n\n<p style="text-align:center">&gt; Levantamento dos problemas e necessidades do empreendimento.<br />\n&gt; Apresenta&ccedil;&atilde;o das solu&ccedil;&otilde;es estruturais, conjunturais e t&eacute;cnicas.<br />\n&gt; Especifica&ccedil;&otilde;es dos equipamentos propostos para as solu&ccedil;&otilde;es.<br />\n&gt; Memorial descritivo dos materiais a serem utilizados (equipamentos e insumos).<br />\n&gt; Plano de implanta&ccedil;&atilde;o, com esquema visual de fotos, desenhos, croquis e outros.<br />\n&gt; Apresenta&ccedil;&atilde;o das propostas CIMTEL para execu&ccedil;&atilde;o da obra.<br />\n&gt; M&iacute;dia contendo o relat&oacute;rio e todas as fotos, desenhos e croquis apresentados no relat&oacute;rio impresso.</p>\n\n<p>&nbsp;</p>\n', 0, 0, 'consultoria-tecnica.jpg', 6),
(20, 1, 0, 1, 0, '6 dicas de segurança para vigilantes', '6-dicas-de-seguranca-para-vigilantes', 'Vigilantes, Segurança', 'Pensando nas responsabilidades dos profissionais de segurança, encontramos algumas dicas que servem para lembrá-los, pois se trata de algo primário mas que que com o dia-a-dia acaba caindo em esquecimento. ', '2016-09-23', 'Pensando nas responsabilidades dos profissionais de segurança, encontramos algumas dicas que servem para lembrá-los, pois se trata de algo primário mas que que com o dia-a-dia acaba caindo em esquecimento. ', '<p><img alt="" src="/ckfinder/userfiles/images/dicas-vigilantes%20(1).jpg" style="height:auto; width:100%" /></p>\n\n<p>Pensando nas responsabilidades dos profissionais de seguran&ccedil;a, encontramos algumas dicas que servem para lembr&aacute;-los, pois se trata de algo prim&aacute;rio mas que que com o dia-a-dia acaba caindo em esquecimento.&nbsp;</p>\n\n<p>&nbsp;&nbsp;<strong> &nbsp;Dica n&uacute;mero 1: Evite distra&ccedil;&otilde;es</strong> - essa &eacute; uma das pe&ccedil;as chaves! &Eacute; importante manter a aten&ccedil;&atilde;o redobrada em posto de servi&ccedil;o, qualquer distra&ccedil;&atilde;o pode se tornar um caos. Evitar leituras, conversas, uso de celulares e qualquer outro aparelho que tome sua aten&ccedil;&atilde;o.<br />\n&nbsp;&nbsp; <strong>&nbsp;Dica n&uacute;mero 2: Tenha uma postura adequada </strong>- nesse cargo &eacute; importante manter uma postura s&eacute;ria, que imp&otilde;e respeito. Dessa forma, o vigilante passa a impress&atilde;o correta que de estar&aacute; sempre organizado e pronto para agir.&nbsp;<br />\n&nbsp;&nbsp;<strong> &nbsp;Dica n&uacute;mero 3: Siga os procedimentos da empresa</strong> - os procedimentos da empresa devem ser bons aliados, eles tem a fun&ccedil;&atilde;o de reduzir os riscos a seguran&ccedil;a e servir de padr&atilde;o para o comportamento do vigilante.&nbsp;<br />\n&nbsp;&nbsp; &nbsp;<strong>Dica n&uacute;mero 4: Portar sempre a arma no coldre </strong>- quando o vigilante trabalhar armado, &eacute; muito importante que mantenha a arma sempre no coldre. Se a arma &eacute; mantida longe do corpo, isso pode dificultar um poss&iacute;vel furto e ainda atrasar uma poss&iacute;vel a&ccedil;&atilde;o defensiva.&nbsp;<br />\n&nbsp;&nbsp; <strong>&nbsp;Dica n&uacute;mero 5: Cuidados na hora da passagem de servi&ccedil;o</strong> - A passagem de servi&ccedil;o deve ser feita em local seguro, fora do tr&acirc;nsito de pessoas. Aquelas regrinhas aprendidas no curso de forma&ccedil;&atilde;o n&atilde;o devem ser esquecidas. Armamento aberto e sem muni&ccedil;&otilde;es (muni&ccedil;&otilde;es em uma m&atilde;o e armamento na outra).<br />\n&nbsp;&nbsp;<strong> &nbsp;Dica n&uacute;mero 6: Desconfian&ccedil;a nesse caso, nunca &eacute; demais</strong> - O vigilante deve ser capaz de se antecipar ao evento danoso, com o fim de evit&aacute;-lo ou de minimizar seus efeitos. Desconfie de pessoas com atitudes suspeitas e mantenha-se alerta para todas as situa&ccedil;&otilde;es. Um vigilante proativo n&atilde;o fica apenas aguardando pelo perigo, mas se antecipa a ele.</p>\n\n<p>Enfim, existem v&aacute;rios quesitos que os vigilantes precisam estar atentos, &eacute; preciso estar sempre &agrave; frente das situa&ccedil;&otilde;es comuns. Ter vantagens para resolver os problemas, para vencer os obst&aacute;culos, para cuidar melhor da sua seguran&ccedil;a e a dos outros.</p>\n', 0, 0, 'dicas-vigilantes_(1).jpg', 6),
(21, 1, 0, 1, 0, 'Descarga elétrica: como proteger os equipamentos?', 'descarga-eletrica-como-proteger-os-equipamentos', 'Segurança, Descarga Elétrica', 'Sabe aquela situação desagradável de chegar em casa ou na empresa e perceber que um equipamento não está funcionando? Infelizmente é comum isso acontecer. ', '2017-04-11', 'Sabe aquela situação desagradável de chegar em casa ou na empresa e perceber que um equipamento não está funcionando? Infelizmente é comum isso acontecer. ', '<p><img alt="" src="/ckfinder/userfiles/images/img_blog_cimtel(11_04).jpg" style="height:auto; width:100%" /></p>\n\n<p><span style="font-size:14px">Sabe aquela situa&ccedil;&atilde;o desagrad&aacute;vel de chegar em casa ou na empresa e perceber que um equipamento n&atilde;o est&aacute; funcionando? Infelizmente &eacute; comum isso acontecer. Os equipamentos eletr&ocirc;nicos ligados na rede el&eacute;trica sempre est&atilde;o expostos a eventuais surtos de tens&atilde;o, ocasionados por problemas de energia ou por ordem natural - mais conhecida como descarga el&eacute;trica.</span></p>\n\n<p><span style="font-size:14px">Mas como proteger os equipamentos desses poss&iacute;veis surtos? Listamos algumas dicas que podem ajudar a prevenir esses inconvenientes e at&eacute; evitar futuros gastos:</span></p>\n\n<ul>\n	<li><span style="font-size:14px"><strong>Ter uma instala&ccedil;&atilde;o el&eacute;trica adequada</strong> &eacute; o primeiro passo para garantir a seguran&ccedil;a. Qualquer coisa de errado com a instala&ccedil;&atilde;o el&eacute;trica, deixa seus equipamentos mais vulner&aacute;veis.</span></li>\n	<li><span style="font-size:14px"><strong>Aterramento da fia&ccedil;&atilde;o el&eacute;trica</strong> da sua casa ou empresa &eacute; fundamental. No aterramento &eacute; instalado um cabo de cobre no solo, de forma que ele possa descarregar as tens&otilde;es atmosf&eacute;ricas e est&aacute;ticas.&nbsp;</span></li>\n	<li><span style="font-size:14px"><strong>Tomada individual:</strong> &eacute; importante evitar a sobrecarga de equipamentos ligados a s&oacute; uma fonte.&nbsp;</span></li>\n	<li><span style="font-size:14px"><strong>Uma solu&ccedil;&atilde;o antiga:</strong> se voc&ecirc; estiver em casa ou na empresa no momento de uma tempestade com rel&acirc;mpagos, &eacute; v&aacute;lido desconectar os aparelhos das tomadas. Isso tamb&eacute;m serve para desconectar o telefone fixo e o modem, ligados a linha telef&ocirc;nica que n&atilde;o possui prote&ccedil;&atilde;o contra raios.</span></li>\n	<li><span style="font-size:14px"><strong>Dica para empresas:</strong> tanto uma empresa de pequeno ou grande porte, que depende de computadores, o uso de nobreaks maiores e at&eacute; o uso de geradores de energia se fazem necess&aacute;rios. A utiliza&ccedil;&atilde;o do conjunto de nobreaks e geradores, permite que com a queda de energia, o nobreak mantenha as m&aacute;quinas funcionando e se a falta de luz durar mais tempo os geradores garantir&atilde;o o fornecimento de energia.&nbsp;</span></li>\n	<li><span style="font-size:14px"><strong>Dispositivos de prote&ccedil;&atilde;o contra surtos atmosf&eacute;ricos:</strong> mais conhecido como DPS. S&atilde;o equipamentos desenvolvidos com o objetivo de detectar sobretens&otilde;es na rede el&eacute;trica, desviar as correntes de surto e dren&aacute;-los para o sistema de aterramento antes que atinjam os equipamentos eletr&ocirc;nicos. Podem ser instalados em resid&ecirc;ncias e empresas.&nbsp;</span></li>\n</ul>\n\n<p><span style="font-size:14px">Seguindo essas dicas, voc&ecirc; pode se prevenir contra essas situa&ccedil;&otilde;es desagrad&aacute;veis, evitar o stress e o gasto extra para consertar seus equipamentos eletr&ocirc;nicos.&nbsp;</span></p>\n', 0, 0, 'img_blog_cimtel(11.04)_.jpg', 6),
(22, 1, 0, 1, 0, 'Manutenção Preventiva X Manutenção Corretiva', 'manutencao-preventiva-x-manutencao-corretiva', 'Manutenção, Preventiva, Corretiva', 'Em tempos atuais investir na segurança da nossa casa, comércio, indústria se tornou quase que primordial. ', '2017-04-18', 'Em tempos atuais investir na segurança da nossa casa, comércio, indústria se tornou quase que primordial. ', '<p><img alt="" src="/ckfinder/userfiles/images/manutencao-preventiva-x-manutencao-corretiva.jpg" style="height:auto; width:100%" /></p>\n\n<p>Em tempos atuais investir na seguran&ccedil;a da nossa casa, com&eacute;rcio, ind&uacute;stria se tornou quase que primordial. S&atilde;o tantos aparelhos eletr&ocirc;nicos incorporados nessa seguran&ccedil;a, que acabamos tendo que ficar atentos &agrave; manuten&ccedil;&atilde;o de cada um deles, afinal o objetivo principal &eacute; de ser um circuito de seguran&ccedil;a eficaz, e para isso &eacute; preciso que tudo esteja funcionando perfeitamente.</p>\n\n<p>Existem dois tipos de manuten&ccedil;&atilde;o:<strong> a preventiva e a corretiva</strong>. Ambas s&atilde;o extremamente importantes, mas vamos detalhar cada uma delas para que voc&ecirc; possa conhecer e optar pela que mais se adequa a sua realidade atual.</p>\n\n<h2>Manuten&ccedil;&atilde;o Preventiva</h2>\n\n<p>Como o pr&oacute;prio nome j&aacute; diz, esse tipo de manuten&ccedil;&atilde;o visa a preven&ccedil;&atilde;o. Seus equipamentos ser&atilde;o revisados para que problemas que possam ocorrer, sejam solucionados sem o transtorno de ficar com o equipamento quebrado e em desuso. A maior vantagem desse tipo de manuten&ccedil;&atilde;o nos leva &agrave;quele velho ditado: &ldquo;prevenir &eacute; o melhor rem&eacute;dio&rdquo;, pois com isso estaremos prolongando a vida &uacute;til dos equipamentos, e assim evitando futuras dores de cabe&ccedil;a.</p>\n\n<p>Esse tipo de manuten&ccedil;&atilde;o preventiva &eacute; realizado em resid&ecirc;ncias, com&eacute;rcios, ind&uacute;strias, e alguns condom&iacute;nios menores com necessidades de manuten&ccedil;&otilde;es sem contratos de assist&ecirc;ncia t&eacute;cnica.</p>\n\n<p>Saiba mais sobre o servi&ccedil;o <a href="https://www.cimtel.com.br/manutencao-preventiva">manuten&ccedil;&atilde;o preventiva</a> oferecido pela Cimtel.</p>\n\n<h2>Manuten&ccedil;&atilde;o Corretiva</h2>\n\n<p>&Eacute; simples! Quebrou? A gente conserta! Chamamos de ger&ecirc;ncia reativa a t&eacute;cnica usada nesse tipo de manuten&ccedil;&atilde;o, pois &eacute; esperado pela falha dos equipamentos para que seja feita uma manuten&ccedil;&atilde;o, o que acaba tornando o servi&ccedil;o bem mais caro do que simplesmente uma manuten&ccedil;&atilde;o preventiva. Entretanto, sabemos que nem sempre estamos atentos ao desempenho dos aparelhos, e assim eles estragam sem que nos demos conta. Quando isso acontecer, lembre que dispomos de um tipo de servi&ccedil;o avulso, caso voc&ecirc; n&atilde;o tenha um contrato de assist&ecirc;ncia t&eacute;cnica conosco.</p>\n\n<p>Saiba mais sobre o servi&ccedil;o <a href="https://www.cimtel.com.br/manutencao-corretiva">manuten&ccedil;&atilde;o corretiva</a> oferecido pela Cimtel.</p>\n\n<p>Portanto, voc&ecirc; j&aacute; sabe se for investir em seguran&ccedil;a ou na manuten&ccedil;&atilde;o de equipamentos que zelam por voc&ecirc;, conte conosco!&nbsp;</p>\n', 0, 0, 'img_blog_cimtel(18.04)_.jpg', 6),
(23, 1, 0, 1, 0, 'Como implantar um sistema de CFTV  (circuito fechado de TV) no meu prédio?', 'como-implantar-um-sistema-de-cftv-circuito-fechado-de-tv-no-meu-predio', 'CFTV', 'Investir em segurança é sempre um bom investimento, afinal nunca é demais criar métodos e formas de manter seguro nosso patrimônio e principalmente nosso bem maior: a vida.', '2017-04-25', 'Investir em segurança é sempre um bom investimento, afinal nunca é demais criar métodos e formas de manter seguro nosso patrimônio e principalmente nosso bem maior: a vida.', '<p><img alt="" src="/ckfinder/userfiles/images/como-implantar-um-sistema-de-cftv-circuito-fechado-de-tv-no-meu-predio.jpg" style="height:auto; width:100%" /></p>\n\n<h2>Investir em seguran&ccedil;a &eacute; sempre um bom investimento, afinal nunca &eacute; demais criar m&eacute;todos e formas de manter seguro nosso patrim&ocirc;nio e principalmente nosso bem maior: a vida.</h2>\n\n<p>Os sistemas de CFTV (Circuito Fechado de TV) s&atilde;o atualmente os equipamentos eletr&ocirc;nicos de seguran&ccedil;a mais vendidos no Brasil, conforme o balan&ccedil;o divulgado pela <a href="http://www.abese.org.br/index/">Abese</a> (Associa&ccedil;&atilde;o Brasileira das Empresas de Sistemas Eletr&ocirc;nicos de Seguran&ccedil;a).</p>\n\n<p>Esse tipo de sistema de seguran&ccedil;a costuma fazer parte dos investimentos de muitos s&iacute;ndicos, pois a tecnologia presente fornece recursos altamente eficientes, como alta qualidade de defini&ccedil;&atilde;o de imagem, zoom, infravermelho e muito mais.</p>\n\n<h2>Qual sistema de CFTV escolher?</h2>\n\n<p>S&atilde;o muitas c&acirc;meras de modelos diferentes, caixas de prote&ccedil;&atilde;o, cabos, fontes, placas, processadores, gravadores e monitores. Com a transi&ccedil;&atilde;o das TVs para o mundo digital, as capturas e resolu&ccedil;&otilde;es das imagens deste sistema j&aacute; est&atilde;o dispon&iacute;veis em qualidades de imagens bem superiores que h&aacute; 5 anos atr&aacute;s, muitas inclusive j&aacute; vem com a tecnologia 4K.</p>\n\n<p>Uma boa escolha para os condom&iacute;nios em rela&ccedil;&atilde;o ao custo-benef&iacute;cio s&atilde;o as c&acirc;meras HD com infravermelho. Feito isso, &eacute; hora de conhecer e escolher a plataforma de transmiss&atilde;o de dados que pode ser tanto via cabo, quanto via rede IP (internet ou intranet).</p>\n\n<h2>Como implantar o sistema de CFTV?</h2>\n\n<p>O primeiro passo &eacute; definir onde ser&atilde;o instalados os monitores e o aparelho central de monitoramento. Profissionais de seguran&ccedil;a recomendam que os monitores sejam instalados junto &agrave;s guaritas dos pr&eacute;dios, para que assim o porteiro sempre esteja em frente &agrave;s telas com as imagens. Ainda assim, existe outra op&ccedil;&atilde;o de monitoramento, o chamado monitoramento remoto. Esse tipo de sistema possui as mesmas instala&ccedil;&otilde;es, com a diferen&ccedil;a de que existe uma empresa respons&aacute;vel pelas imagens e pelo acompanhamento das mesmas.</p>\n\n<p>O importante &eacute; saber decidir qual o melhor sistema de CFTV para o seu condom&iacute;nio com base em:<strong> fornecedores confi&aacute;veis</strong>, <strong>proced&ecirc;ncia garantida de bons equipamentos</strong> e principalmente realizar um <strong>diagn&oacute;stico das necessidades</strong> locais para saber exatamente quais os procedimentos devem ser passados para os funcion&aacute;rios e moradores do pr&eacute;dio.</p>\n\n<p>Para ajudar voc&ecirc;, com todas estas quest&otilde;es abordadas acima, a Cimtel possui uma equipe altamente qualificada, que faz o diagn&oacute;stico das necessidades do seu pr&eacute;dio e indica a melhor solu&ccedil;&atilde;o e os melhores equipamento de CFTV, garantindo assim, que voc&ecirc; possa implantar um circuito eficiente que traga seguran&ccedil;a e tranquilidade para todos os cond&ocirc;minos. Entre em <a href="https://www.cimtel.com.br/contato">contato</a> e saiba mais.</p>\n', 0, 0, 'seguranca-residencial-cimtel.jpg', 5);
INSERT INTO `gercont_noticias` (`id`, `ativo`, `ordenar`, `id_usuario`, `idioma`, `titulo`, `url_titulo`, `keywords`, `description`, `data`, `chamada`, `texto`, `imagens`, `videos`, `capa`, `categoria_das_noticias`) VALUES
(24, 1, 0, 1, 0, 'Preciso de uma central de alarme contra roubo na minha empresa ou residência?', 'preciso-de-uma-central-de-alarme-contra-roubo-na-minha-empresa-ou-residencia', 'Alarme, Roubo', '', '2017-05-03', 'Segurança em primeiro lugar sempre! Ninguém quer estar sujeito a passar pela situação desagradável de ser uma possível vítima de roubo. Seja em casa, na empresa ou na rua, a prevenção tem sido a melhor opção para evitar esses casos. ', '<p><img alt="" src="/ckfinder/userfiles/images/interno-central-contra-roubo.png" style="height:100%; width:auto" /></p>\n\n<p>Seguran&ccedil;a em primeiro lugar sempre! Ningu&eacute;m quer estar sujeito a passar pela situa&ccedil;&atilde;o desagrad&aacute;vel de ser uma poss&iacute;vel v&iacute;tima de roubo. Seja em casa, na empresa ou na rua, a preven&ccedil;&atilde;o tem sido a melhor op&ccedil;&atilde;o para evitar esses casos.&nbsp;</p>\n\n<p>Uma das op&ccedil;&otilde;es de seguran&ccedil;a que auxiliam muito na hora de se prevenir, &nbsp;&eacute; a implanta&ccedil;&atilde;o de uma <a href="http://www.cimtel.com.br/catalogo/sistema-de-alarme/sistema-de-alarme">central de alarme contra roubo</a>! Voc&ecirc; pode mesmo quando n&atilde;o est&aacute; por perto, manter seus patrim&ocirc;nios protegidos. De acordo com a Associa&ccedil;&atilde;o Brasileira de Empresas de Sistemas Eletr&ocirc;nicos de Seguran&ccedil;a, 94% das tentativas de roubos em locais que s&atilde;o monitorados e possuem um sistema de alarme, fracassam. &nbsp;&nbsp; &nbsp;</p>\n\n<p>Sendo assim &eacute; comprovado a efic&aacute;cia desse sistema de alarme contra roubo, ele assegura sua tranq&uuml;ilidade e garante a preserva&ccedil;&atilde;o das suas posses. Voc&ecirc; poder&aacute; viajar nas f&eacute;rias, nos finais de semana, ou at&eacute; cumprir com seus compromissos, sabendo que sua casa/empresa ficar&aacute; do jeito que voc&ecirc; deixou. Livre de qualquer tipo de stress desnecess&aacute;rio.&nbsp;</p>\n\n<p>A CIMTEL atua na venda, montagem, instala&ccedil;&atilde;o e manuten&ccedil;&atilde;o de sistemas de alarme contra roubo, residenciais, comerciais e industriais. Tem seu nome consolidado no mercado com base na &eacute;tica profissional e na qualidade dos produtos e servi&ccedil;os oferecidos. Trabalha com os mais diversos equipamentos de monitoramento e detec&ccedil;&atilde;o como: Centrais de alta tecnologia; Sensores passivos internos; Sensores ativos externos; Sensores para aberturas (portas e janelas); Sistemas de acionamento &agrave; dist&acirc;ncia.&nbsp;</p>\n\n<p>Um sistema de alarme nada mais &eacute; do que um circuito el&eacute;trico. Seu funcionamento b&aacute;sico depende de in&uacute;meros sensores localizados em pontos estrat&eacute;gicos, e que s&atilde;o ligados &agrave; rede el&eacute;trica. Os sensores podem captar movimento, calor, ou abertura de portas e janelas.&nbsp;</p>\n\n<p>Na hora de proteger sua fam&iacute;lia e seu patrim&ocirc;nio &eacute; importante contar com uma empresa s&eacute;ria e comprometida com resultados, projetando um sistema de seguran&ccedil;a adequado perfeitamente &agrave;s suas necessidades e suas possibilidades de investimento.</p>\n\n<p>Quer saber mais sobre como instalar uma central de alarme contra roubo na sua casa ou estabelecimento comercial? Fale conosco e fa&ccedil;a um <a href="http://www.cimtel.com.br/contato">or&ccedil;amento</a>!</p>\n', 0, 0, 'capa-central-contra-roubo.png', 9),
(25, 1, 0, 1, 0, '5 vantagens de implantar controles de acesso no seu estabelecimento comercial', '5-vantagens-de-implantar-controles-de-acesso-no-seu-estabelecimento-comercial', 'Controles de acesso', '', '2017-05-10', 'A expressão “controle de acesso” nos traz a ideia de que o controle de indivíduos é totalmente efetivo. Entretanto, o objetivo é apenas gerenciar a entrada e saída de pessoas, garantindo a segurança através dessa checagem de quem está autorizado a adentrar no estabelecimento. O sistema é bastante seguro e eficaz de tal forma que muitas empresas estão implantando-o.', '<p><img alt="" src="/ckfinder/userfiles/images/interno-controle-de-acessos.png" style="height:100%; width:auto" /></p>\n\n<p>A express&atilde;o &ldquo;controle de acesso&rdquo; nos traz a ideia de que o controle de indiv&iacute;duos &eacute; totalmente efetivo. Entretanto, o objetivo &eacute; apenas gerenciar a entrada e sa&iacute;da de pessoas, garantindo a seguran&ccedil;a atrav&eacute;s dessa checagem de quem est&aacute; autorizado a adentrar no estabelecimento. O sistema &eacute; bastante seguro e eficaz de tal forma que muitas empresas est&atilde;o implantando-o.</p>\n\n<p>Atrav&eacute;s da instala&ccedil;&atilde;o desse tipo de controle de acesso em departamentos, para determinar o dia e hor&aacute;rio de entrada/sa&iacute;da de cada um, &eacute; poss&iacute;vel controlar o fluxo de pessoas em setores onde a seguran&ccedil;a delas e de projetos precisa ser garantida. Al&eacute;m disso, o sistema tamb&eacute;m garante que atrav&eacute;s do controle das entradas e sa&iacute;das, seus funcion&aacute;rios cumpram a carga hor&aacute;ria estabelecida.</p>\n\n<p>As vantagens em adotar esse tipo de sistema no seu estabelecimento s&atilde;o in&uacute;meras, por&eacute;m listamos as cinco principais:</p>\n\n<h2>1# Bloqueio &agrave; entrada de pessoas n&atilde;o autorizadas;</h2>\n\n<h2>2# Controle de pessoas em um ambiente: lota&ccedil;&atilde;o m&aacute;xima permitida;</h2>\n\n<h2>3# Economia em servi&ccedil;os terceirizados como vigil&acirc;ncia de portaria e garagens;</h2>\n\n<h2>4# F&aacute;cil localiza&ccedil;&atilde;o de pessoas nos ambientes controlados;</h2>\n\n<h2>5# Seguran&ccedil;a contra furtos e poss&iacute;veis danos desagrad&aacute;veis;</h2>\n\n<p>Diante de todos esses benef&iacute;cios, a CIMTEL conta com solu&ccedil;&otilde;es em <a href="http://www.cimtel.com.br/catalogo/controle-de-acesso/controle-de-acesso">sistemas de controle de acesso</a> para resid&ecirc;ncias, condom&iacute;nios residenciais e comerciais, empresas e ind&uacute;strias. A tecnologia presente nesse tipo de seguran&ccedil;a vai desde o acesso atrav&eacute;s de um cart&atilde;o magn&eacute;tico, at&eacute; um simples acesso biom&eacute;trico.&nbsp;</p>\n\n<p>Al&eacute;m disso voc&ecirc; pode contar com a seriedade e qualidade de uma empresa com 30 anos de atua&ccedil;&atilde;o, que apresenta um projeto adequado, instala&ccedil;&otilde;es de alto n&iacute;vel e assist&ecirc;ncia t&eacute;cnica garantida.</p>\n\n<p>N&atilde;o tenha d&uacute;vidas sobre esse investimento. Garanta todas as vantagens de um bom controle de acesso, e conte conosco para lhe auxiliar nessa tarefa. <a href="http://www.cimtel.com.br/contato">Fale conosco</a>, fa&ccedil;a um or&ccedil;amento!</p>\n', 0, 0, 'capa-controle-de-acessos.png', 5),
(26, 1, 0, 1, 0, 'O que é preciso para ter um sistema de alarme de incêndio eficiente no seu condomínio?', 'o-que-e-preciso-para-ter-um-sistema-de-alarme-de-incendio-eficiente-no-seu-condominio', 'Alarme de incêndio, Condomínio, Segurança', '', '2017-05-15', 'Quanto maior o condomínio maior é a propensão a assaltos e eventuais transtornos. Isso acontece devido ao fluxo de pessoas e veículos, assim como também o uso de diversos meios de segurança, iluminação, vigilância, sistemas de comunicação, entre outros tantos equipamentos. ', '<p><img alt="" src="/ckfinder/userfiles/images/alarme-incendio-condominio.png" style="height:100%; width:auto" /></p>\n\n<p>Quanto maior o condom&iacute;nio maior &eacute; a propens&atilde;o a assaltos e eventuais transtornos. Isso acontece devido ao fluxo de pessoas e ve&iacute;culos, assim como tamb&eacute;m o uso de diversos meios de seguran&ccedil;a, ilumina&ccedil;&atilde;o, vigil&acirc;ncia, sistemas de comunica&ccedil;&atilde;o, entre outros tantos equipamentos.&nbsp;</p>\n\n<h2>Uma fa&iacute;sca pode ser o in&iacute;cio de um grande inc&ecirc;ndio</h2>\n\n<p>Um foco de inc&ecirc;ndio pode come&ccedil;ar, a partir de um curto circuito, descargas el&eacute;tricas ou qualquer tipo de objeto que gere fa&iacute;scas. Muitos dos acidentes s&atilde;o imprevis&iacute;veis, mas para que os danos sejam menores, existem meios que detectam facilmente esse tipo de inc&ecirc;ndio logo no in&iacute;cio que s&atilde;o conhecidos como sistemas de alarme de inc&ecirc;ndios. Eles proporcionam um atendimento &aacute;gil e com grandes chances de controlar qualquer eventual acidente.Esse sistema de alarme nada mais &eacute; do que um conjunto de equipamentos eletroeletr&ocirc;nicos que informam a viola&ccedil;&atilde;o do per&iacute;metro ou local protegido, atrav&eacute;s de sinais sonoro visuais.</p>\n\n<h2>Equipamento &eacute; importante, t&eacute;cnico capacitado ainda mais</h2>\n\n<p>Analisar bem um sistema de alarme e a empresa que ir&aacute; prestar o servi&ccedil;o &eacute; primordial para obter os bons resultados de toda essa a&ccedil;&atilde;o. N&atilde;o adianta escolher um sistema de alarme super moderno, se o profissional que for instalar n&atilde;o for capacitado para aquela fun&ccedil;&atilde;o. Ent&atilde;o, a dica &eacute; estar atento a um bom profissional experiente, para que assim o equipamento funcione adequadamente.</p>\n\n<p>---</p>\n\n<h1>COMPONENTES IMPRESCIND&Iacute;VEIS</h1>\n\n<h2># Central de alarme de inc&ecirc;ndio</h2>\n\n<p>&Eacute; onde tudo acontece. Todos os dispositivos s&atilde;o conectados por uma central que monitora o sistema e recebe todas as informa&ccedil;&otilde;es. Se for detectado algum sinal de fuma&ccedil;a ou princ&iacute;pio de inc&ecirc;ndio, a central enviar&aacute; comandos que ir&atilde;o ativar as sirenes de alarme de inc&ecirc;ndio no local.</p>\n\n<h2># Detector de fuma&ccedil;a</h2>\n\n<p>Se houver algum ind&iacute;cio de fuma&ccedil;a por menor que seja, esse alarme dispara.&nbsp;</p>\n\n<h2># Detector t&eacute;rmico</h2>\n\n<p>Caso ocorra eleva&ccedil;&atilde;o na temperatura ambiente e ela atinja um determinado grau previamente configurado, os detectores emitem sinais de mensagens a central.</p>\n\n<h2># Acionador manual</h2>\n\n<p>Manualmente tamb&eacute;m &eacute; poss&iacute;vel enviar um sinal de que h&aacute; inc&ecirc;ndios, por&eacute;m &eacute; preciso que esteja dispon&iacute;vel e devidamente funcionando para que qualquer pessoa esteja apta a us&aacute;-lo em casos de emerg&ecirc;ncias.</p>\n\n<h2># Sinalizador</h2>\n\n<p>&Eacute; muito eficiente, pois ele emite um sinal visual e sonoro, alertando a todos sobre a situa&ccedil;&atilde;o de perigo.&nbsp;</p>\n\n<p>---</p>\n\n<p>&Eacute; importante lembrar que cada condom&iacute;nio tem necessidade de um tipo de <a href="http://www.cimtel.com.br/catalogo/alarme-de-incendio/alarme-de-incendio">sistema de alarme contra inc&ecirc;ndios</a>. Entre em contato conosco e descubra qual o melhor tipo para o seu condom&iacute;nio, contamos com profissionais capacitados e prontos para atend&ecirc;-lo da melhor forma. Evite transtornos, contrate os servi&ccedil;os de quem garante a qualidade e a seguran&ccedil;a no que faz. Contrate a CIMTEL.</p>\n', 0, 0, 'o-que-e-preciso-para-ter-um-sistema-de-alarme-de-incendio-eficiente-no-seu-condominio-capa.png', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gercont_banners`
--
ALTER TABLE `gercont_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_catalogo_categorias`
--
ALTER TABLE `gercont_catalogo_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_catalogo_configuracao`
--
ALTER TABLE `gercont_catalogo_configuracao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_catalogo_pedidos`
--
ALTER TABLE `gercont_catalogo_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_catalogo_pedidos_produtos`
--
ALTER TABLE `gercont_catalogo_pedidos_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_catalogo_produtos`
--
ALTER TABLE `gercont_catalogo_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_categoria_das_noticias`
--
ALTER TABLE `gercont_categoria_das_noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_clientes`
--
ALTER TABLE `gercont_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_contatos`
--
ALTER TABLE `gercont_codemin_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_log_acessos`
--
ALTER TABLE `gercont_codemin_log_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_log_acoes`
--
ALTER TABLE `gercont_codemin_log_acoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_newsletter`
--
ALTER TABLE `gercont_codemin_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_opcoes`
--
ALTER TABLE `gercont_codemin_opcoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_opcoes_selecionadas`
--
ALTER TABLE `gercont_codemin_opcoes_selecionadas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_uploads`
--
ALTER TABLE `gercont_codemin_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_usuarios`
--
ALTER TABLE `gercont_codemin_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_usuarios_permissoes`
--
ALTER TABLE `gercont_codemin_usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_video`
--
ALTER TABLE `gercont_codemin_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_codemin_videos`
--
ALTER TABLE `gercont_codemin_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_configuracoes`
--
ALTER TABLE `gercont_configuracoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_contato`
--
ALTER TABLE `gercont_contato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_conteudo`
--
ALTER TABLE `gercont_conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_depoimentos`
--
ALTER TABLE `gercont_depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_galerias_fotos`
--
ALTER TABLE `gercont_galerias_fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_images_config`
--
ALTER TABLE `gercont_images_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_menu`
--
ALTER TABLE `gercont_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gercont_noticias`
--
ALTER TABLE `gercont_noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gercont_banners`
--
ALTER TABLE `gercont_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gercont_catalogo_categorias`
--
ALTER TABLE `gercont_catalogo_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gercont_catalogo_configuracao`
--
ALTER TABLE `gercont_catalogo_configuracao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gercont_catalogo_pedidos`
--
ALTER TABLE `gercont_catalogo_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_catalogo_pedidos_produtos`
--
ALTER TABLE `gercont_catalogo_pedidos_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_catalogo_produtos`
--
ALTER TABLE `gercont_catalogo_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `gercont_categoria_das_noticias`
--
ALTER TABLE `gercont_categoria_das_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gercont_clientes`
--
ALTER TABLE `gercont_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gercont_codemin_contatos`
--
ALTER TABLE `gercont_codemin_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `gercont_codemin_log_acessos`
--
ALTER TABLE `gercont_codemin_log_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `gercont_codemin_log_acoes`
--
ALTER TABLE `gercont_codemin_log_acoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;
--
-- AUTO_INCREMENT for table `gercont_codemin_newsletter`
--
ALTER TABLE `gercont_codemin_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `gercont_codemin_opcoes`
--
ALTER TABLE `gercont_codemin_opcoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_codemin_opcoes_selecionadas`
--
ALTER TABLE `gercont_codemin_opcoes_selecionadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `gercont_codemin_uploads`
--
ALTER TABLE `gercont_codemin_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `gercont_codemin_usuarios`
--
ALTER TABLE `gercont_codemin_usuarios`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gercont_codemin_usuarios_permissoes`
--
ALTER TABLE `gercont_codemin_usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `gercont_codemin_video`
--
ALTER TABLE `gercont_codemin_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_codemin_videos`
--
ALTER TABLE `gercont_codemin_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_configuracoes`
--
ALTER TABLE `gercont_configuracoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gercont_contato`
--
ALTER TABLE `gercont_contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gercont_conteudo`
--
ALTER TABLE `gercont_conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gercont_depoimentos`
--
ALTER TABLE `gercont_depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gercont_galerias_fotos`
--
ALTER TABLE `gercont_galerias_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_images_config`
--
ALTER TABLE `gercont_images_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gercont_menu`
--
ALTER TABLE `gercont_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `gercont_noticias`
--
ALTER TABLE `gercont_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
