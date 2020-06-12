$(document).ready(function(){

	
	//For bootstrap carousel video stop after slide	
	 $('.carousel').on('slide.bs.carousel', function () {
 	     
		 var id_of_carousel=$(this).attr('id'); 
		 var video_element=$('#'+id_of_carousel).find('video');
		 if(video_element.length!= 0){
 	     
			 video_element[0].pause();
		 } 
	 
	 });
	 
	 
    //For filtering the project based on the particular category  
     $('.p-category').click(function() {
   	   var value = $(this).attr("id");
   		 
   		if(value=='all'){
   			$('.pro-category').show(100);	
   		}
   		else{
   		  $('.pro-category').hide(1000); 
   		  $('.'+value).show(1000);
   		}
   	    $(".p-category").removeClass("active-category");
   	    $(this).addClass("active-category");
     });
     
    //For hide the meassage of status  
     $(".alert").delay(5000).slideUp(2000, function() {
       $(this).alert('close');
     });
   });




//Share Project 
function copyProjectLink(projectId){
    	 var copyText=window.location.protocol+window.location.hostname+"/share/project/"+projectId;
    	 var inputElement=document.createElement('input');
    	  
    	  document.body.appendChild(inputElement);
    	  inputElement.value=copyText;
    	  inputElement.select();
    	  document.execCommand("copy");
    	  
    	  alert("Shared Link Copied");
    	  inputElement.remove();
    	}



/* AJAX FOR COMMENTING AND LIKES  */  

 function doLikeAndDeleteLike(like,project_id){
    $.ajax({
	       url:"/user/project/like/" +project_id,
		   success:function(status){
		    	 	
	    var likes=$('#total_like_'+project_id).text().split(" ")[1];
		likes=parseInt(likes);
		
		if(status==='liked'){
		   $(like).html('<i class="fa fa-thumbs-up" aria-hidden="true"></i>');
		   $(like).css("color","#007bff");
		   $('#total_like_'+project_id).text("likes "+(likes+1));
		 }
	    else{
		     $(like).html('<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>')
		     .css("color","black");
		     $('#total_like_'+project_id).html("likes "+(likes-1));
		 }
      }
   }); 
  }

function deleteComment(d_source,d_comment,comment_id,project_id){
    
    if(confirm("Do you really want to delete  ?")){
	    $.ajax({
   		
	    	 url:"/user/project/comment/delete/"+comment_id,
	         success:function(status){
	    	 var total_comments=$('#total_comments_'+project_id).text().split(" ")[1];
		     total_comments=parseInt(total_comments);
		     $('#total_comments_'+project_id).html("comments "+(total_comments-1));
	         $(d_source).html(status).css('color','red');
	         $(d_comment).hide(1000);
           }
       });
    }
    
  else{
    return false;
 }
}


function doComment(project_id,comment_text){
	  
	 if(comment_text.trim()==""){
		   return false;
		}
	  
    $.ajax({
	       type:"POST",	
	       url:'/user/project/comment',
	       data:{projectId:project_id,commentText:comment_text},
	       success:function(comment){
		 
		     var total_comments=$('#total_comments_'+project_id).text().split(" ")[1];
		     total_comments=parseInt(total_comments);
		     $('#total_comments_'+project_id).html("comments "+(total_comments+1));
		     $("#comment_text_"+project_id).val('');
		     var delete_comment='<button type="button" class="btn btn-link" onclick='+"deleteComment($(this),comment_id_"
				 +comment.id+","+comment.id+","+project_id+")"+'>delete</button>';
		     
		     var username=$("#login_username").val();
		     var profile_pic="/Users/";
		     profile_pic+=$("#login_profile_pic").val();
		     console.log("profile pic "+profile_pic);
		     var username_link='<a href='+"/profile/"+username+'"'+'>'+username+'</a>';
		    
		     var user_img_link='<a href='+"/profile/"+username+'"'+'>' 
		                     +'<img class="comment_user_img" src='+profile_pic+'/></a>'; 
		 
		    $("#com_text_"+project_id)
		    .before('<div class="comment_img" id='+"comment_id_"+comment.id+' >'
				 +user_img_link+'  <div class="comment_text">'+username_link+' <span class="mb-4">'
		         +comment.commentText+'&nbsp &nbsp </span> </div>'+delete_comment+'</div>');
         }
	   });
   }


