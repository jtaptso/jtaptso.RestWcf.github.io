<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mathematical operations using Rest WCF service</h1>
    <div class="jumbotron">
        <%--<button onclick="doWork(); return false;">DoWork</button>--%>
        <button onclick="doSquare(); return false;">Square</button>
        <input type="text" id="square" />
        <br />
        <br />
        <button onclick="doAdd(); return false;">Add</button>
        <button onclick="doMult(); return false;">Mult</button>
        <button onclick="doDiv(); return false;">Div</button>
        <br />
        <input type="text" id="firstValue" style="width:100px;"/>
        <input type="text" id="secondValue" style="width:100px;"/>
    </div>

    <script type="text/javascript">
        function doWork() {
            $.ajax({
                url: "Service/Service1.svc/DoWork",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    //console.info(result)
                    alert('Result : ' + result)
                }
            });
        }

        function doSquare() {
            var value = $("#square").val();
            $.ajax({
                url: "Service/Service1.svc/DoSquare",
                type: "POST",
                data: JSON.stringify(value),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    //console.info(result)
                    alert('Result : ' + result)
                }
            });
        }

        function doAdd() {
            var opValue = {
                "FirstValue": $("#firstValue").val(),
                "SecondValue": $("#secondValue").val()
            };
            $.ajax({
                url: "Service/Service1.svc/DoAdd",
                type: "POST",
                data: JSON.stringify(opValue),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    //console.info(result);
                    alert('Result : ' + result)
                }
            });
        }

        function doMult() {
            var opValue = {
                "FirstValue": $("#firstValue").val(),
                "SecondValue": $("#secondValue").val()
            };
            $.ajax({
                url: "Service/Service1.svc/DoMult",
                type: "POST",
                data: JSON.stringify(opValue),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    //console.info(result)
                    alert('Result : ' + result)
                }
            });
        }

        function doDiv() {
            var opValue = {
                "FirstValue": $("#firstValue").val(),
                "SecondValue": $("#secondValue").val()
            };
            $.ajax({
                url: "Service/Service1.svc/DoDiv",
                type: "POST",
                data: JSON.stringify(opValue),
                dataType: "json",
                contentType: "application/json",
                success: function (result) {
                    //console.info(result)
                    alert('Result : ' + result)
                }
            });
        }
    </script>
</asp:Content>
