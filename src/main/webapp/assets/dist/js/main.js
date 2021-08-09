$('[id^="content"]').click(function(){
    let id = $(this).attr('data-code');

    $.ajax({
        type: 'POST',
        url: 'http://localhost:8080/servletAsync_3C_war/findById',
        data: {
            action: 'findById',
            id: id
        }
    }).done(function(res){
        console.log(res);
        let games = res.games;

        $('#lbl_idGames').text(games.idGames);
        $('#lbl_name').text(games.name);
        $('#lbl_imgGame').text(games.imgGame);
        $('#lbl_datePremiere').text(games.datePremiere);
        $('#lbl_Category_idCategory').text(games.Category_idCategory);
        $('#lbl_status').text(games.status);
    });
});
