<?php


    
    

     if(isset($_POST['task'] ) && $_POST['task'] == 'comment_insert')
     {
         require_once $_SERVER['DOCUMENT_ROOT'] .'/PhpProject1/'.'define.php';
         
         $userID = (int)$_POST['userID'];
         $comment = addslashes(str_replace("\n", "<br>", $_POST['comment']));
         $std = new stdClass();
         $std->user = null;
         $std->comment = null;
         $std->error = false;
                   
        require_once MODELS_DIR . 'comments.php';
       
         
         
         if( class_exists('Comments') && class_exists('subcribers') )
         {
             $userInfo = subcribers::getSubcriber( $userID );
             
             if($userID == NULL)
             {
                
                 $std->error = true;
                 
             }
             
             $commentInfo = Comments::insert($comment, $userID);
             
            if($commentInfo == null)
             {
                 $std->error = true;
                  
             }
             
             $std->user = $userInfo;
             $std->comment = $commentInfo;
            
             
         }
         
         
             echo json_encode( $std );
             
         
         
         
     }
     else 
     {
         header('location: /');
         
         
         
     }
?>