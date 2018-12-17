﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseData.aspx.cs" Inherits="App_Views_CourseData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>课程档案</title>
    <link href="../../App_Themes/css/IndexStyle.css" rel="Stylesheet" type="text/css" />
    <link href="../../App_Themes/css/Data.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="header-top">
            <div class="all-center">
                <div class="header-top-left">
                    <span>
                        <a href="">设为首页</a>
                    </span>
                    <span>
                        <a href="">收藏本页</a>
                    </span>
                </div>
                <div class="header-top-right">
                    <label></label>
                    <label></label>
                </div>
            </div>
        </div>
        <div class="header-cneter">
            <div class="mian-pitrue">
                <div class="all-center">
                    <h1>
                        <a href="../IndexPage.htm"></a>
                        <img src="../../App_Themes/images/index/Index_Asp.jpg" width="960px" height="120px" alt="Web程序设计"/>
                    </h1>
                </div>
            </div>
        </div>
        <div class="header-daohang">
            <div class="all-center">
            <ul>
                <li class="a">
                    <span><a href="../IndexPage.htm">网站首页</a></span> 
                </li>
                <li>
                    <a href="https://baike.baidu.com/item/Web%20%E7%A8%8B%E5%BA%8F%E8%AE%BE%E8%AE%A1" target="_blank">课程简介</a>
                </li>
                <li> 
                    <a href="" target="_blank">课程背景</a>
                </li>
                <li>
                    <a href="http://eol.wyu.edu.cn/eol/homepage/common/" target="_blank">教学平台</a>
                </li>
                <li>
                    <a href="" target="_blank">课程要求</a>
                </li>
                <li>
                    <a href="" target="_blank">相关资料</a>
                </li>
            </ul>
        </div>
        </div>
    </div>
    <div class="all-center">
        <div class="t-center">
        <center>
        <br />
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM 课程档案 WHERE (课程代号 = ?)" 
                InsertCommand="INSERT INTO [课程档案] ([课程代号], [课程名称], [类别], [考核方式], [学分], [备注]) VALUES (?, ?, ?, ?, ?, ?)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM [课程档案]" 
                
                
                UpdateCommand="UPDATE 课程档案 SET 课程名称 = ?, 类别 = ?, 考核方式 = ?, 学分 = ?, 备注 = ? WHERE (课程代号 = ?)">
                <DeleteParameters>
                    <asp:Parameter Name="课程代号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="课程代号" Type="String" />
                    <asp:Parameter Name="课程名称" Type="String" />
                    <asp:Parameter Name="类别" Type="String" />
                    <asp:Parameter Name="考核方式" Type="String" />
                    <asp:Parameter Name="学分" Type="Single" />
                    <asp:Parameter Name="备注" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="课程名称" Type="String" />
                    <asp:Parameter Name="类别" Type="String" />
                    <asp:Parameter Name="考核方式" Type="String" />
                    <asp:Parameter Name="学分" Type="Single" />
                    <asp:Parameter Name="备注" Type="String" />
                    <asp:Parameter Name="课程代号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="课程代号" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None" Width="720px" Font-Size="Large">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="课程代号" HeaderText="课程代号" ReadOnly="True" 
                        SortExpression="课程代号" />
                    <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
                    <asp:BoundField DataField="类别" HeaderText="类别" SortExpression="类别" />
                    <asp:BoundField DataField="考核方式" HeaderText="考核方式" SortExpression="考核方式" />
                    <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
                    <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"/>
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <span>
                <asp:ImageButton ID="back" runat="server" PostBackUrl="~/App_Views/data/DataPage.aspx" 
                    ImageUrl="~/App_Themes/images/report/ReportPage2_03.jpg" Height="30px" />
            </span>
        </center>
        </div>
    </div>
    <div class="footer">
        <div class="all-center">
            <span>
            </span>
            <span>
            </span>
        </div>
    </div>
    </form>
</body>
</html>
