<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="hibernate.BaseDAO,entity.Course,java.util.*" %>
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
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">课程管理<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/Course/sj/addcourse.action">添加课程</a></li>
                <li><a href="/Course/sj/editcourse.action">编辑课程</a></li>
              </ul>
            </li>
            <li class="dropdown">
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
       <% 
          BaseDAO<Course>coursedao=new BaseDAO<Course>();
          Integer id=Integer.parseInt(request.getParameter("id"));
          Course course=coursedao.find(Course.class,id);
          request.setAttribute("course", course);
       %>
      <hr />
      <div class="container">
              <div class="row float-element">
                <form id="signin-form" class="form-signin" action="/Course/sj/editing">
                  <div class="form-signin-heading">
                    <h3><span class="blue">添加信息</span></h3>
                    <hr>
                  </div>
                  <div id="signin-alert" role="alert" class="display: none"></div>
                  <input type="hidden" name="courseid" value="${course.id }" />
                  <label for="name">课程名称</label>
                  <input type="text" value="${course.name}" name="name" id="name" class="form-control" placeholder="课程名称" required autofocus>
                  <label for="start">起始周</label>
                  <select name="start" class="form-control" id="start">
                     <%
                       for(int i=1;i<=25;i++){
                           if(i==course.getStart())
                             out.print("<option selected>"+i+"</option>");
                           else
                             out.print("<option>"+i+"</option>");
                       }
                      %>
                  </select>
                  <label for="end">结束周</label>
                  <select name="end" class="form-control" id="end">
                     <%
                       for(int i=1;i<=25;i++){
                           if(i==course.getEnd())
                             out.print("<option selected>"+i+"</option>");
                           else
                             out.print("<option>"+i+"</option>");
                       }
                      %>
                  </select>
                  <label for="course_index">节次</label>
                  <select name="course_index" class="form-control" id="course_index">
                     <%
                       for(int i=1;i<=10;i++){
                           if(i==course.getStart())
                             out.print("<option selected>"+i+"</option>");
                           else
                             out.print("<option>"+i+"</option>");
                       }
                      %>
                  </select>
                  <label for="week_index">周次</label>
                  <select name="week_index" class="form-control" id="week_index">
                     <%
                       for(int i=1;i<=7;i++){
                           if(i==course.getStart())
                             out.print("<option selected>"+i+"</option>");
                           else
                             out.print("<option>"+i+"</option>");
                       }
                      %>
                  </select>
                  <label for="course_amount">节数</label>
                  <select name="course_amount" class="form-control" id="course_amount">
                     <%
                       for(int i=1;i<=5;i++){
                           if(i==course.getStart())
                             out.print("<option selected>"+i+"</option>");
                           else
                             out.print("<option>"+i+"</option>");
                       }
                      %>
                  </select>
                  <br>
                  <button class="btn btn-lg btn-blue btn-block" type="submit">更新</button>
                </form>
         </div>
       </div>
  </body> 
  <script src="/Course/js/jquery.min.js"></script>
  <script src="/Course/js/bootstrap.min.js"></script>
</html>
