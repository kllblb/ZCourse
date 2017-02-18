<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="Service.CourseService,entity.Person,entity.Course,java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta HTTP-EQUIV="pragma" CONTENT="no-cache"> 
  <meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
  <meta HTTP-EQUIV="expires" CONTENT="0">
  <style type="text/css">
      table {
             border-collapse:collapse;
             font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;}
      td {height:50px;text-align:center;}
      #th1 {width: 200px;text-align:center;}
      #th2 {width: 150px;text-align:center;}   
    </style>
  </head>
  
  <body>
    <% CourseService cs=new CourseService();
       Person p=(Person) session.getAttribute("person");
       Set<Course>courses=p.getCourses();
       int[][] a=cs.findRowspan(courses);
       request.setAttribute("rowspan", a);
     %>
    <table border="1" >
          <tr>
              <th id="th1">   </th>
              <th id="th2">周一</th>
              <th id="th2">周二</th>
              <th id="th2">周三</th>
              <th id="th2">周四</th>
              <th id="th2">周五</th>
              <th id="th2">周六</th>
              <th id="th2">周日</th>
          </tr>
          <tr>
                <td>8:00-8:45</td>
                <s:set var="index" value="0"/>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==1&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
          </tr>
          <tr>
              <td>8:50-9:35</td>
                <s:if test="%{#request.rowspan[2][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[2][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==2&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr>
          <td>9:40-10:25</td>
                <s:if test="%{#request.rowspan[3][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[3][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==3&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr>
          <td>10:30-11:15</td>
                <s:if test="%{#request.rowspan[4][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[4][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==4&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr>
          <td>11:20-12:05</td>
                <s:if test="%{#request.rowspan[5][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[5][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==5&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr>
                <td colspan="8"></td>
          </tr>
          <tr>
          <td>14:00-14:45</td>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==6&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
          </tr>
          <tr>
          <td>14:50-15:35</td>
                <s:if test="%{#request.rowspan[7][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[7][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==7&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr>
          <td>15:40-16:25</td>
                <s:if test="%{#request.rowspan[8][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[8][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==8&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                
          </tr>
          <tr>
          <td>16:30-17:15</td>
                <s:if test="%{#request.rowspan[9][1]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][2]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][3]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][4]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][5]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][6]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
                <s:if test="%{#request.rowspan[9][7]==0}">
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==9&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                </s:if>
          </tr>
          <tr><td colspan="8"></td></tr>
          <tr>
          <td  style="height=200px;">19:00-22:00</td>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==1">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==2">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==3">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==4">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==5">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==6">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
                <s:iterator id="course" value="#session.person.courses">
                <s:if test="#course.course_index==10&&#course.week_index==7">
                  <td rowspan="${course.course_amount}">
                  <s:property value="#course.name" />
                  </td>
                <s:set var="index" value="1" />
                </s:if>
                </s:iterator>
                <s:if test="#index==0">
                  <td></td>
                </s:if>
                <s:else>
                  <s:set var="index" value="0"/>
                </s:else>
          </tr>
      </table>
  </body>
</html>

