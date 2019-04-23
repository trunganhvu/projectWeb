<?php require_once $_SERVER['DOCUMENT_ROOT'] . '/PhpProject1/define.php'; ?>
<?php require_once MODELS_DIR . '/comments.php';
    $userID = 1;
?>
<!DOCTYPE html>
<html>
<head>
	<title>Comment Box</title>
        <link rel="stylesheet" type="text/css" href="css/layoutcomment.css">
	<!--<link rel="stylesheet" type="text/css" href="jscomment.js">-->
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/comment_insert.js?t=<?php echo time(); ?>"></script>
        <script type="text/javascript" src="js/comment_delete.js?t=<?php echo time(); ?>"></script>
        <script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<div class="wrapper">
		

		<div class="comment-wrapper">
			<h3 class="comment-title"> Nhận xét</h3>
                        <div class="comment-insert">
                            <h3 class="who-says"><span>Says:</span> Đoàn Mạnh Cường</h3>
                            <div class="comment-insert-container">
                                <textarea id="comment-post-text" class="comment-insert-text"></textarea>
                            </div>
                            <div id="comment-post-btn" class="comment-post-btn-wrapper" >  
                                Post
                            </div>
                        </div>
			<div class="comment-list">
                           	<ul class="comments-holder-ul">
                                        <?php $comments = Comments::getComments(); ?>
					<?php require_once INCLUDES . 'comment_box.php'; ?>
				</ul>



			</div>
		</div>
		
	</div>
    <input type="hidden" id="userID" value="<?php echo $userID; ?>"/>
    <input type="hidden" id="userName" value="Doan Dang Khoa"/>




</body>
</html>