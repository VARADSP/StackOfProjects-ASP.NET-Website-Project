<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="viewusers.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

    <style>
#overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5);
    z-index: 2;
    cursor: pointer;
}

#text{
    position: absolute;
    top: 50%;
    left: 50%;
    font-size: 50px;
    color: white;
    transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper row2" style="overflow-x:auto">
         <br /><br /><br /><br /><br />



    <div  style="height:750px; width:1837px; overflow-x:auto;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" style="overflow-x:auto">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="userid" HeaderText="ID" SortExpression="userid" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="username" HeaderText="UserName" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
                <asp:BoundField DataField="phone" HeaderText="PhoneNo" SortExpression="phone" />
                <asp:BoundField DataField="userqual" HeaderText="Qualification" SortExpression="userqual" />
                <asp:BoundField DataField="useraddr" HeaderText="Address" SortExpression="useraddr" />
                <asp:BoundField DataField="userdesc" HeaderText="Description" SortExpression="userdesc" />
                <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [userdata]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [userdata] WHERE [username] = @original_username AND [name] = @original_name AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([cpass] = @original_cpass) OR ([cpass] IS NULL AND @original_cpass IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([userqual] = @original_userqual) OR ([userqual] IS NULL AND @original_userqual IS NULL)) AND (([useraddr] = @original_useraddr) OR ([useraddr] IS NULL AND @original_useraddr IS NULL)) AND (([userdesc] = @original_userdesc) OR ([userdesc] IS NULL AND @original_userdesc IS NULL)) AND (([userid] = @original_userid) OR ([userid] IS NULL AND @original_userid IS NULL)) AND (([ContentType] = @original_ContentType) OR ([ContentType] IS NULL AND @original_ContentType IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([FileName] = @original_FileName) OR ([FileName] IS NULL AND @original_FileName IS NULL))" InsertCommand="INSERT INTO [userdata] ([name], [username], [pass], [cpass], [phone], [userqual], [useraddr], [userdesc], [userid], [ContentType], [Data], [FileName]) VALUES (@name, @username, @pass, @cpass, @phone, @userqual, @useraddr, @userdesc, @userid, @ContentType, @Data, @FileName)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [userdata] SET [name] = @name, [pass] = @pass, [cpass] = @cpass, [phone] = @phone, [userqual] = @userqual, [useraddr] = @useraddr, [userdesc] = @userdesc, [userid] = @userid, [ContentType] = @ContentType, [Data] = @Data, [FileName] = @FileName WHERE [username] = @original_username AND [name] = @original_name AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([cpass] = @original_cpass) OR ([cpass] IS NULL AND @original_cpass IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([userqual] = @original_userqual) OR ([userqual] IS NULL AND @original_userqual IS NULL)) AND (([useraddr] = @original_useraddr) OR ([useraddr] IS NULL AND @original_useraddr IS NULL)) AND (([userdesc] = @original_userdesc) OR ([userdesc] IS NULL AND @original_userdesc IS NULL)) AND (([userid] = @original_userid) OR ([userid] IS NULL AND @original_userid IS NULL)) AND (([ContentType] = @original_ContentType) OR ([ContentType] IS NULL AND @original_ContentType IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([FileName] = @original_FileName) OR ([FileName] IS NULL AND @original_FileName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_pass" Type="String" />
                <asp:Parameter Name="original_cpass" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_userqual" Type="String" />
                <asp:Parameter Name="original_useraddr" Type="String" />
                <asp:Parameter Name="original_userdesc" Type="String" />
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_ContentType" Type="String" />
                <asp:Parameter Name="original_Data" Type="Object" />
                <asp:Parameter Name="original_FileName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="cpass" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="userqual" Type="String" />
                <asp:Parameter Name="useraddr" Type="String" />
                <asp:Parameter Name="userdesc" Type="String" />
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="FileName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="cpass" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="userqual" Type="String" />
                <asp:Parameter Name="useraddr" Type="String" />
                <asp:Parameter Name="userdesc" Type="String" />
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="ContentType" Type="String" />
                <asp:Parameter Name="Data" Type="Object" />
                <asp:Parameter Name="FileName" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_pass" Type="String" />
                <asp:Parameter Name="original_cpass" Type="String" />
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_userqual" Type="String" />
                <asp:Parameter Name="original_useraddr" Type="String" />
                <asp:Parameter Name="original_userdesc" Type="String" />
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_ContentType" Type="String" />
                <asp:Parameter Name="original_Data" Type="Object" />
                <asp:Parameter Name="original_FileName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

