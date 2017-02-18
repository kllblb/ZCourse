<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="modal fade bs-example-modal-sm"  id="logout" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">确定要登出吗？</h4>
      </div>
      <div class="modal-body">
        登出后需要重新登陆才能进行操作
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">否</button>
        <a href="/Course/sj/logout.action"><button type="button" class="btn btn-primary">是</button></a>
      </div>
    </div>
  </div>
</div>