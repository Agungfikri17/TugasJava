<%-- 
    Document   : kas-form
    Created on : Dec 2, 2021, 11:04:19 PM
    Author     : agungFikri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" >
            <h2>Add Kas Bulanan ${message} </h2>
            <div class="row">
                <div class="col-md-6" >
                    <form action="kas-form.html" modelAttribute="kas" method="POST" >                    
                        <div class="form-group">
                            <input type="text" class="form-container" name="tanggal" placeholder="Tanggal" value="${kas.tanggal}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="keterangan" placeholder="Keterangan" value="${kas.keterangan}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="debit" placeholder="Debit" value="${kas.debit}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="kredit" placeholder="Kredit" value="${kas.kredit}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-container" name="saldo" placeholder="Saldo" value="${kas.saldo}"/>
                        </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
            <a href="${pageContext.request.contextPath}/home.html">Back To List</a>
        </div>
    </body>
</html>
