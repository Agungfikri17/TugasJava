<%-- 
    Document   : home
    Created on : Des 1, 2021, 12:01:49 AM
    Author     : agungFikri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@include file="include.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LAPORAN KAS</h1>
        <h4>Bulan Desember</h4>
        <!--<h2>status:${msg}</h2>-->
        <p>
        <table border="1" cellspacing="0" cellpadding="10">
               <tr>
                    <td>No</td>
                    <td>Tanggal</td>
                    <td>Keterangan</td>
                    <td>Pemasukan</td>
                    <td>Pengeluaran</td>
                    <td>Saldo Akhir</td>
                    <td>Aksi</td>
               </tr>
             <c:forEach items="${listKas}" var="kas">
                 <tr>
                    <td>${kas.id}</td>
                    <td>${kas.tanggal}</td>
                    <td>${kas.keterangan}</td>
                    <td>${kas.debit}</td>
                    <td>${kas.kredit}</td>
                    <td>${kas.saldo}</td>
                    <td>
                        <button class="btn-primary" onclick="window.location.href='kas-formedit.html?action=edit&id=${kas.id}'">Edit</button>
                        <button class="btn-danger" onclick="window.location.href='kas-form.html?action=delete&id=${kas.id}'">Delete</button>
                    </td>
                 </tr>
             </c:forEach>
         </table>
         </p>
         <p>
            <button class="btn btn-primary" onclick="window.location.href='kas-form.html'" >
                Masukan Kas
            </button>
        </p>
    </body>
</html>
