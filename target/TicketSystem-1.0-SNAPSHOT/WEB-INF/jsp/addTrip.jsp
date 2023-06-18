<%--
  Created by IntelliJ IDEA.
  User: 张胜通
  Date: 2023/6/13
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>添加班次信息</title>
    <%--BootStrop 美化界面--%>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container">
         <div class="row clearfix">
         <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增车次</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/trip/saveTrip" method="post">
        <div class="form-group">
            <label>班次号：</label>
            <input type="text" name="classes" class="form-control" required>
        </div>

        <div class="form-group">
            <label>发车时间：</label>
            <input type="text" name="startTime" class="form-control" required value="<fmt:formatDate value="${startTime}" pattern="yyyy-MM-dd HH:mm"/> " >

        </div>

        <div class="form-group">
            <label>起始站：</label>
            <input type="text" name="startStation" class="form-control" required>
        </div>

        <div class="form-group">
            <label>终点站：</label>
            <input type="text" name="endStation" class="form-control" required>
        </div>

        <div class="form-group">
            <label>行车时间：</label>
            <input type="text" name="travelTime" class="form-control" required>
        </div>

        <div class="form-group">
            <label>额定载量：</label>
            <input type="text" name="capacity" class="form-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" value="添加">

        </div>

    </form>
</div>

</body>
</html>
