<?php
if(isset($_POST['task'] ) && $_POST['task'] == 'comment_delete')
     {
         require_once $_SERVER['DOCUMENT_ROOT'] .'/PhpProject1/'.'define.php';
         require_once MODELS_DIR . 'comments.php';
         
         
         if( class_exists( 'Comments') ) 
         {
             if( Comments::delete( $_POST['comment_id'] ) )
             {
                 echo "true";
                 
                 
             }
             
         }
         echo "false";
             
         
    }
         
         
         
         
  ?>       
         
         
         
         
         
         
         
         
         