﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentData.aspx.cs" Inherits="App_Views_StudentData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生档案</title>
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
                DeleteCommand="DELETE FROM 学生情况 WHERE (学号 = ?)" 
                InsertCommand="INSERT INTO [学生情况] ([学号], [姓名], [性别], [出生日期], [生源地], [院系代号], [政治面貌], [是否住宿], [宿舍电话], [照片]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM [学生情况]" 
                UpdateCommand="UPDATE 学生情况 SET 姓名 = ?, 性别 = ?, 出生日期 = ?, 生源地 = ?, 院系代号 = ?, 政治面貌 = ?, 是否住宿 = ?, 宿舍电话 = ?, 照片 = ? WHERE (学号 = ?)">
                <DeleteParameters>
                    <asp:Parameter Name="学号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="出生日期" Type="DateTime" />
                    <asp:Parameter Name="生源地" Type="String" />
                    <asp:Parameter Name="院系代号" Type="String" />
                    <asp:Parameter Name="政治面貌" Type="String" />
                    <asp:Parameter Name="是否住宿" Type="Boolean" />
                    <asp:Parameter Name="宿舍电话" Type="String" />
                    <asp:Parameter Name="照片" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性别" Type="String" />
                    <asp:Parameter Name="出生日期" Type="DateTime" />
                    <asp:Parameter Name="生源地" Type="String" />
                    <asp:Parameter Name="院系代号" Type="String" />
                    <asp:Parameter Name="政治面貌" Type="String" />
                    <asp:Parameter Name="是否住宿" Type="Boolean" />
                    <asp:Parameter Name="宿舍电话" Type="String" />
                    <asp:Parameter Name="照片" Type="Object" />
                    <asp:Parameter Name="学号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="学号" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None"  Font-Size="Large" Height="350px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True"
                        SortExpression="学号"/>
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="出生日期" HeaderText="出生日期" SortExpression="出生日期" />
                    <asp:BoundField DataField="生源地" HeaderText="生源地" SortExpression="生源地" />
                    <asp:BoundField DataField="院系代号" HeaderText="院系代号" SortExpression="院系代号" />
                    <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                    <asp:CheckBoxField DataField="是否住宿" HeaderText="是否住宿" SortExpression="是否住宿" />
                    <asp:BoundField DataField="宿舍电话" HeaderText="宿舍电话" SortExpression="宿舍电话" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                    Wrap="False" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" Wrap="False" />
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
