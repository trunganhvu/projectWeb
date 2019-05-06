$( document ).ready( function() {
    
    $( '#comment-post-btn').click( function() {
        //text within textarea
       comment_post_btn_click();
    });
function comment_post_btn_click() {
    
     var _comment = $( '#comment-post-text' ).val();
        var _userID = $( '#userID' ).val();
        var _userName = $('#userName').val();
        if(_comment.length > 0 && _userID != null) {
            //processed with our ajax callback
            $('.comment-insert-container').css('border', '1px solid red');
            $.post( "httpsdoc/ajax/comment_insert.php" ,
                {
                    task: "comment_insert",
                    userID: _userID,
                    comment: _comment    
                },
                function( data, status ) {
                   var Obj = JSON.parse(data);
                    
                    //alert('type data: ' + typeof + data);
                    comment_insert( Obj);
                    
                    
                }
             )

             
                   
            console.log( _comment + " UserName: " + _userName + " User Id: " + _userID);
        }
        else
        {
            $('.comment-insert-container').css('border', '1px solid #ccff66');
           console.log("The text area was empty") ;
           
        }
         
        
        //xoa text khoi vung textarea
        $( '#comment-post-text' ).val("");
    }
    
    

    
    
  
function comment_insert( data ) 
{
    
    var t= '';
    t+= '<li class="comment-holder" id="_'+data.comment.comment_id+' ">';
    t+= '<div class="user-img">' ;
    t+= '<img src="'+data.user.profile_img+'" class="user-img-pic" />' ;
    t+= '</div>' ;
    t+= '<div class="comment-body">' ;
    t+= '<h3 class="username-field">'+data.user.userName+'</h3>' ;
    t+= '<div class="comment-text">'+data.comment.comment+'</div>' ;

    t+= '<div class="comment-button-holder">' ;
    t+= '<ul>' ;
    t+= '<li id = "'+data.comment.comment_id+'" class="delete-btn">&#8942;</li>' ;
    t+= '</ul>' ;			
    t+= '</div>' ;
    t+= '</div>' ;
    t+= '</li>' ;
    
    $('.comments-holder-ul') .prepend( t );
    
   
    add_delete_handlers();
    
}
} );
    
    