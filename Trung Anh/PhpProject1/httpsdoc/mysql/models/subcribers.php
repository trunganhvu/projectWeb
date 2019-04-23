<?php

    

class subcribers {
    public static function getSubcriber ($userID) {
        
        $connect = mysqli_connect('localhost', 'root', '','comment') or Die("Problems");
        $sql = "select * from subcribers where userID = $userID";
        
        $query = mysqli_query($connect,$sql);
        if( $query ) {
            
            if(mysqli_num_rows($query) == 1)
            {
                return mysqli_fetch_object( $query );
                
                
            }
            
            
        }
        
        
        return null;
    }
    
   
    
}

?>