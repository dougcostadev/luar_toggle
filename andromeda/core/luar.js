
function closeMenu() {
    $.post('https://luar_toogle/close', JSON.stringify({}));
    $('body').hide()
  }

function BateuPonto() {
    $.post('https://luar_toogle/bateuponto', JSON.stringify({}));
    $('body').hide()
}

$(function(){
    var MaquinaPonto = `<img src="https://cdn.discordapp.com/attachments/840313983738445875/903534370604843028/vd01-ipointline.png">`;
    $('#MaquinaPonto').html(MaquinaPonto);

    window.addEventListener('message',function(event){
        var ponto = event.data;
        if(ponto.abrir == true){
            $('body').show()
        }else{
            $('body').hide()
        }
    });

});

$(document).keyup(function (e) {
    if (e.keyCode === 27) {
      closeMenu();
    }  
});