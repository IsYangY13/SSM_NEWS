<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<section class="container">
<div class="content-wrap">
<div class="content">
  <header class="article-header">
	<h1 class="article-title"><a href="" title="${news.title }" >${news.title }</a></h1>
	<div class="article-meta"> 
		<span class="item article-meta-time">
	  		<time class="time" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="发表时间：2016-10-14"><i class="glyphicon glyphicon-time"></i> <fmt:formatDate value="${news.createTime }" pattern="yyyy-MM-dd hh:mm:ss" /></time>
	  	</span> 
	  	<span class="item article-meta-source" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="来源：【猿来入此】">
	  		<i class="glyphicon glyphicon-globe"></i> 
	  		猿来入此新闻博客
	  	</span> 
	  	<span class="item article-meta-category" data-toggle="tooltip" data-placement="bottom" title="${news.title }" data-original-title="${news.title }">
	  		<i class="glyphicon glyphicon-list"></i> 
	  		<a href="" title="${news.newsCategory.name }" >${news.newsCategory.name }</a>
	  	</span> 
	  	<span class="item article-meta-views" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="浏览量：${news.viewNumber }">
	  		<i class="glyphicon glyphicon-eye-open"></i> ${news.viewNumber }
	  	</span> 
	  	<span class="item article-meta-comment" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="评论量${news.commentNumber }">
	  		<i class="glyphicon glyphicon-comment"></i>${news.commentNumber } 
	  	</span> 
	 </div>
  </header>
  <article class="article-content">
  	${news.content }
  </article>
  <div class="article-tags">标签：
  	<c:forEach items="${tags }" var="tag">
  	<a href="../news/search_list?keyword=${tag }" rel="tag" >${tag }</a>
  	</c:forEach>
  </div>
  <div class="title" id="comment">
	<h3>评论</h3>
  </div>
  <div id="respond">
		<form id="comment-form" name="comment-form" action="" method="POST">
			<div class="comment">
				<input type="hidden" name="newsId" value="${news.id }">
				<input name="nickname" id="nickname" class="form-control" size="22" placeholder="您的昵称（必填）" maxlength="15" autocomplete="off" tabindex="1" type="text">
				<div class="comment-box">
					<textarea placeholder="您的评论或留言（必填）" name="content" id="comment-textarea" cols="100%" rows="3" tabindex="3"></textarea>
					<div class="comment-ctrl">
						<div class="comment-prompt" style="display: none;"> <i class="fa fa-spin fa-circle-o-notch"></i> <span class="comment-prompt-text">评论正在提交中...请稍后</span> </div>
						<div class="comment-success" style="display: none;"> <i class="fa fa-check"></i> <span class="comment-prompt-text">评论提交成功...</span> </div>
						<button type="button" id="comment-submit" tabindex="4">评论</button>
					</div>
				</div>
			</div>
		</form>
		
	</div>
	<div id="postcomments" style="padding-bottom:0px;">
		<ol id="comment_list" class="commentlist">        
		</ol>
  	</div>
  	<div class="ias_trigger" style="margin-top:0px;"><a href="javascript:;" id="load-more-comment-btn">查看更多</a></div>
</div>
</div>
<%@ include file="../common/sidebar.jsp" %>
</section>
<%@ include file="../common/footer.jsp" %>
<script>
var page = 1;

$(document).ready(function(){
	$("body").addClass('single');
	//评论文章
	$("#comment-submit").click(function(){
		if($("#nickname").val() == ''){
			alert('请填写昵称！');
			return;
		}
		if($("#comment-textarea").val() == ''){
			alert('请填写内容！');
			return;
		}
		$.ajax({
			url:'../news/comment_news',
			type:'post',
			data:$("#comment-form").serialize(),
			dataType:'json',
			success:function(data){
				if(data.type == 'success'){
					
					var li = '<li class="comment-content"><span class="comment-f">#' + ($("#comment_list").children('li').length + 1);
					    li += '</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">'+$("#nickname").val()+'</a><span class="time">('+format(data.createTime)+')</span><br>'+$("#comment-textarea").val()+'</p></div></li></ol>';
					$("#comment_list").append(li); 
					$("#comment-textarea").val('');
				}else{
					alert(data.msg);
				}
			}
		});
	});
	
	//异步加载评论内容
	$.ajax({
		url:'../news/get_comment_list',
		type:'post',
		data:{rows:10,page:page++,newsId:'${news.id}'},
		dataType:'json',
		success:function(data){
			if(data.type == 'success'){
				var commentList = data.commentList;
				var html = '';
				for(var i=0;i<commentList.length;i++){
					var li = '<li class="comment-content"><span class="comment-f">#' + (commentList.length -i);
				    li += '</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">'+commentList[i].nickname+'</a><span class="time">('+format(commentList[i].createTime)+')</span><br>'+commentList[i].content+'</p></div></li></ol>';
					html += li;
				}
				$("#comment_list").append(html);
			}
		}
	});
	
	$("#load-more-comment-btn").click(function(){
		if($("#load-more-comment-btn").attr('data-key') == 'all')return;
		$("#load-more-comment-btn").text('查看更多评论');
		//异步加载评论内容
		$.ajax({
			url:'../news/get_comment_list',
			type:'post',
			data:{rows:10,page:page++,newsId:'${news.id}'},
			dataType:'json',
			success:function(data){
				if(data.type == 'success'){
					
					var commentList = data.commentList;
					$("#load-more-comment-btn").text('查看更多评论!');
					if(commentList.length == 0){
						$("#load-more-comment-btn").text('没有更多了!');
						$("#load-more-comment-btn").attr('data-key','all');
					}
					var html = '';
					for(var i=0;i<commentList.length;i++){
						var li = '<li class="comment-content"><span class="comment-f">#' + ($("#comment_list").children('li').length + i + 1);
					    li += '</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">'+commentList[i].nickname+'</a><span class="time">('+format(commentList[i].createTime)+')</span><br>'+commentList[i].content+'</p></div></li></ol>';
						html += li;
					}
					$("#comment_list").append(html);
				}
			}
		});
	});
});	
</script>