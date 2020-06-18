<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--图书回填-->
<!DOCTYPE html>
<head>
    <title>修改图书内容</title>
    <jsp:include page="../../../include.jsp"/>
</head>
<body>
<div class="loan_addBook_Context" style="width: 800px; margin: 0 auto;">
    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-edit"> </span> 修改图书内容</div>
        <div class="panel-body">
            <form action="/admin/ch/updateBook.action" method="post" enctype="multipart/form-data">
                <%-- 图书 id --%>
                <input type="hidden" name="id" value="${library.id}"/>
                <div class="row">
                    <div class="form-group col-md-5">
                        <label for="">书名：</label>
                        <input type="text" name="bookname" class="form-control input-md" value="${library.bookname}">
                    </div>
                    <div class="col-md-9"></div>
                </div>
                <div class="row">
                    <div class="form-group col-md-5">
                        <label for="">条形码：</label>
                        <input type="text" name="barcode" class="form-control input-md" value="${library.barcode}">
                    </div>
                    <div class="col-md-9"></div>
                </div>
                <div class="row">
                    <div class="form-group col-md-5">
                        <label>图书封面：</label>
                        <!-- <button class="btn btn-info websitUpdate_btn" style="margin-top: 3px;">浏览上传</button>-->
                        <input type="file" name="uploadFile"> 图片尺寸 500*500</input>

                    </div>
                </div>

                <!--后台接收select_v的参数即可-->
                <div class="row">
                    <div class="col-md-5">图书类别
                        <select class="form-control" name="cateId">
                            <c:forEach items="${categoryAll}" var="category">
                                <option value="${category.id}">${category.catname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-8">
                        <label for="">图书简介：</label>
                        <textarea class="form-control" rows="3" name="description">${library.description}</textarea>
                    </div>
                </div>

                <div class="row">
                    </br>
                    <div class="col-md-5">
                        <label for="">图书价格：</label>
                        <input type="text" name="price" class="form-control input-md" value="${library.price}">
                    </div>
                    </br>
                </div>

                <div class="row">
                    </br>
                    <button class="btn btn-info" value="提交" type="submit" style="margin-left: 15px;">提交 <span
                            class="glyphicon glyphicon-ok"> </span></button>
                </div>
            </form>
        </div>
    </div>
    <!--bs 栅格系统结束-->
</div>
</body>
</html>