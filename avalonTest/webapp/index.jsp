<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2014/11/27
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
      <script type="text/javascript" src="js/avalon.js"></script>
      <script>
          avalon.define("test", function(vm) {
              vm.$aaa = "sss"
              vm.$skipArray = ["bbb", "ccc"]
              vm.aaa = 1111
              vm.bbb = 222
              vm.ccc = 333
              vm.fn = function() {
                  return "函数"
              }
              vm.click = function(){
                  vm.$aaa = vm.aaa = vm.bbb = vm.ccc = "change"
                  vm.fn = function(){
                      return "----------"
                  }
              }
          })

      </script>
  </head>
  <body ms-controller="test">
  <p>{{$aaa}}</p>
  <p>{{aaa}}</p>
  <p>{{bbb}}</p>
  <p>{{ccc}}</p>
  <p>{{fn()}}</p>
  <button type="button" ms-click="click">点我</button>
  </body>
</html>
