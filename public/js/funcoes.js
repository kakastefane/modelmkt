// pega a moeda e transforma para float
function moedaParaFloat(moeda){

   moeda = moeda.replace(".","");
   moeda = moeda.replace(",",".");
   return parseFloat(moeda);

}

// formata para moeda BR
function formataReal(num){
  x = 0;
  if(num<0){
    num = Math.abs(num);
    x = 1;
  }
  if(isNaN(num)) num = "0";
    cents = Math.floor((num*100+0.5)%100);
    num = Math.floor((num*100+0.5)/100).toString();
  if(cents < 10) cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
    num = num.substring(0,num.length-(4*i+3))+'.'+num.substring(num.length-(4*i+3));
    ret = num + ',' + cents;
    if (x == 1) ret = ' – ' + ret;

  return ret;
}

// Atualizar valores do catálogo
function atualizar_valores(input){
  var qtd = input.val();
  var valor = input.parent().parent().parent().find('td.valor').text();
  var subtotal = ((moedaParaFloat(valor)*1) * (qtd*1));
  input.parent().parent().parent().find('td.subtotal').text(formataReal(subtotal));
  var total = 0;
  $('form#form-catalogo table tbody tr td.subtotal').each(function(){
    total = total + ((moedaParaFloat($(this).text()))*1);
  });
  $('form#form-catalogo table tbody tr td.total').text(formataReal(total));

}

$(document).ready(function(){

  var offset = $('#header').offset().top;
  var $meuMenu = $('#header'); // guardar o elemento na memoria para melhorar performance
  $(document).on('scroll', function () {
      if (offset <= $(window).scrollTop()) {
          $meuMenu.addClass('fixada');
      } else {
          $meuMenu.removeClass('fixada');
      }
  });

  $(".rslides").responsiveSlides({
    auto: true,             // Boolean: Animate automatically, true or false
    speed: 500,             // Integer: Speed of the transition, in milliseconds
    timeout: 4000,          // Integer: Time between slide transitions, in milliseconds
    pager: false,           // Boolean: Show pager, true or false
    nav: true,             // Boolean: Show navigation, true or false
    random: false,          // Boolean: Randomize the order of the slides, true or false
    pause: false,           // Boolean: Pause on hover, true or false
    pauseControls: true,    // Boolean: Pause when hovering controls, true or false
    prevText: "",   // String: Text for the "previous" button
    nextText: "",       // String: Text for the "next" button
    maxwidth: "",           // Integer: Max-width of the slideshow, in pixels
    navContainer: "",       // Selector: Where controls should be appended to, default is after the 'ul'
    manualControls: "",     // Selector: Declare custom pager navigation
    namespace: "rslides",   // String: Change the default namespace used
    before: function(){},   // Function: Before callback
    after: function(){}     // Function: After callback
  });

  $("#categorias").owlCarousel({
    stopOnHover : true,
    navigation : true,
    navigationText: [
        "<i class='fa fa-chevron-left'></i>",
        "<i class='fa fa-chevron-right'></i>"
    ],
    paginationSpeed : 1000,
    goToFirstSpeed : 2000,
    autoPlay: 3000,
    itemsCustom : [
        [1100,4],
        [992,3],
        [600,2],
        [300,1]
    ]
  });

  $("#depoimentos").owlCarousel({
    stopOnHover : true,
    navigation : true,
    paginationSpeed : 1000,
    goToFirstSpeed : 2000,
    singleItem : true,
    autoHeight : true,
  });

  $("#clientes").owlCarousel({
    autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 6,
      itemsDesktop : [1199,4],
      itemsDesktopSmall : [979,3]
  });

  // Catálogo
  $('form#form-catalogo input.submit').click(function(){
    $('form#form-catalogo').attr({'action':$('#form-finalizar').val()});
  })
  $('form#form-catalogo input.atualizar').click(function(){
    $('form#form-catalogo').attr({'action':$('#form-atualizar').val()});
  })
  $('form#form-catalogo table tbody tr td button.add').click(function(){
    var input = $(this).parent().find('input:text');
    var total = input.val();
    input.val((total*1) + 1);
    atualizar_valores(input);
    return false;
  });
  $('form#form-catalogo table tbody tr td button.rem').click(function(){
    var input = $(this).parent().find('input:text');
    var total = input.val();
    if(total == 1) return false;
    input.val((total*1) - 1);
    atualizar_valores(input);
    return false;
  });
  // Catálogo

  // Galeria de imagens
  $(".fancybox").fancybox();
  
  // Validação formulário de contato
  if($("#form_contato").length){
    $("#form_contato").validate({
      submitHandler: function(form) {
          var url  = $(form).attr('action');
          var data = new FormData(form);
          var botao = $(form).find('.btn');
          botao.attr('disabled','disabled').text('Enviando...');;
          $.ajax({
            url: url,
            data: data,
            type: 'POST',
            dataType: 'json',
            contentType: false,
            cache: false,
            processData: false
          }).done(function(response) {
            botao.removeAttr('disabled').text('Enviar');;
            if(response.sucesso){
              eval(response.jss);
              $('input').val('');
              $('textarea').val('');
              $("#erro_formulario").addClass('hide');
              $("#sucesso_formulario").removeClass('hide');
            } else {
              $("#erro_formulario").removeClass('hide').text(response.mensagem);
              $("#sucesso_formulario").addClass('hide');
            }
          });
      }
    });
  }
  
  // Validação formulário de newsletter
  if($("#form_newsletter").length){
    $("#form_newsletter").validate({
      submitHandler: function(form) {
          var url  = $(form).attr('action');
          var data = $(form).serialize();
          var botao = $(form).find('button');
          botao.attr('disabled','disabled');
          $.ajax({
            url: url,
            data: data,
            type: 'POST',
            dataType: 'json'
          }).done(function(response) {
            botao.removeAttr('disabled');
            if(response.sucesso){
              $('input').val('');
              $('textarea').val('');
              $("#erro_formulario").addClass('hide');
              $("#sucesso_formulario").removeClass('hide');
            } else {
              $("#erro_formulario").removeClass('hide').text(response.mensagem);
              $("#sucesso_formulario").addClass('hide');
            }
          });
      }
    });
  }
  
  // validação formulário de catálogo
  if($("#form_catalogo").length){
    $("#form_catalogo").validate({

    });
  }

  if($("#telefone").length){
        $("#telefone").setMask("(99) 9999-99999");
  }

});


