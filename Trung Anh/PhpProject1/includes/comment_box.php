

<?php if( isset( $GLOBALS['comments'] ) && is_array($comments) ): ?>
<?php foreach ($comments as $key => $comments ): ?>
<?php $user = subcribers::getSubcriber($comments->userID);?>

<li class="comment-holder" id="_<?php echo $comments->comment_id; ?>">
<div class="user-img">
    <img src="<?php echo $user -> profile_img; ?>"class="user-img-pic" />
</div>
<div class="comment-body">
<h3 class="username-field">
    <?php echo $user -> userName; ?>	
</h3>
<div class="comment-text">
	<?php echo $comments->comment; ?>
        
</div>

<?php if( $userID  == $comments->userID): ?>
<div class="comment-button-holder">
<ul>
    <li id="<?php echo $comments->comment_id; ?>" class="delete-btn">X</li>
</ul>			
</div>
</div>
<?php endif; ?>						


</li>
<?php endforeach; ?>
<?php endif; ?>