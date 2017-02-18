<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.io.*,java.util.*,java.net.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/Course/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Course/css/styles.css" rel="stylesheet">
  </head>
  <body>
      <nav class="navbar navbar-default">
      <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">USTC智能课程表</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="/Course/sj/mainpage.action">个人信息</a></li>
            <li><a href="/Course/sj/mycourse.action">我的课表</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">课程管理<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/Course/sj/addcourse.action">添加课程</a></li>
                <li><a href="/Course/sj/editcourse.action">编辑课程</a></li>
              </ul>
            </li>
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">资料社区<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/Course/sj/filearea.action">资料列表</a></li>
                <li><a href="/Course/sj/toupload.action">我要上传</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
      </nav>
      <hr />
         <div class="container">
              <div class="center-block">
              <p>文件已上传！</p>
              <a href="toupload.action">继续上传</a>
              <a href="mainpage.action">返回主页</a>
         </div>
       </div>      
  </body> 
</html>
