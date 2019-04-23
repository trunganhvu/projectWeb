<?php
    require_once MODELS_DIR. 'subcribers.php';
    
class Comments {

    
    
    public static function getComments( ) 
    {
        
        $output = array();
        $connect = mysqli_connect('localhost', 'root', '','comment') or Die("Problems");
        $sql = "select * from comments order by comment_id desc";
        $query = mysqli_query($connect ,$sql );
        if ( $query ) 
        {
            $output = array();
            if(mysqli_num_rows($query) > 0)
            {
                
                while ( $row = mysqli_fetch_object($query) ) {
                   $output[] = $row; 
                    
                    
                }
                
                
            }
            
            
        }
        return $output;
        
        
        
    }
    public static function insert ($comment_txt, $userID) {
        
        $connect = mysqli_connect('localhost', 'root', '','comment') or Die("Problems");
        $comment_txt = addcslashes($comment_txt, '');
        $sql = "INSERT INTO comments(comment, userID) VALUES('$comment_txt', $userID) " ;
        $query = mysqli_query($connect ,$sql );
        
        
        if( $query )
        {
            
             $insert_id = mysqli_insert_id($connect); 
             
             
             $std = new stdClass();
             $std->comment_id = $insert_id;
             $std->comment = $comment_txt;
             $std->userID = (int)$userID;
           
              return $std;
        }
        
        
            return null;
        
        
    }
     public static function update ($data) {
        
     }
     public static function delete ($commentId) {
        
         $connect = mysqli_connect('localhost', 'root', '','comment') or Die("Problems");
         $sql = "DELETE FROM comments WHERE comment_id = $commentId";
         
         $query = mysqli_query($connect, $sql);
         
         if( $query )
         {
             return true;
             
         }
         
         return null;
                 
                 
                 
     }
    
    
    
}
?>