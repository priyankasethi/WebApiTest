<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApiTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">  
    <title>Article  by Vithal Wadje</title> 
     <script src="jquery-1.7.1.js" type="text/javascript"></script>


<script type = "text/javascript">
function ShowReverse() {
    $.ajax({
        type: "POST",
        url: "Default.aspx/GetReverseString",
        data: '{Sentence: "' + $("#<%=txtSentence.ClientID%>")[0].value + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess,
        failure: function (response) {
            alert(response.d);
        }
    });
}
function OnSuccess(response) {
    alert(response.d);
}
</script>

 
</head>  
<body style="background-color:Navy;color:White">
    <form id="form1" runat="server">
 <div>
Your Sentence :
<asp:TextBox ID="txtSentence" runat="server"></asp:TextBox>
<input id="btnGet" type="button" value="Show Reverse String"
    onclick = "ShowReverse()" />
</div>
    
    </form>
</body>
</html>
