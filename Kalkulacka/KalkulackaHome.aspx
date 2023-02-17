<%@ Page Title="" Language="C#" MasterPageFile="~/Kalkulacka/Kalkulacka.Master" AutoEventWireup="true" CodeBehind="KalkulackaHome.aspx.cs" Inherits="Kalk_2._0.Kalkulacka.KalkulackaHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:scriptManager ID="script1" runat="server"></asp:scriptManager>
    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
    <div class="auto-style1">

            <strong>Kalkulačka</strong></div>
        <div class="container m-4 p-4">
            <center class="set" style="background-color:floralwhite;">
                <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="400px" style="text-align: right; font-size: x-large; background-color: #999966;">0</asp:TextBox>
                <br />
                <asp:Label ID="labelCurrentOperation" runat="server"></asp:Label>
                <br />
                <asp:Button ID="btnOne" runat="server" Height="50px" Text="1" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnTwo" runat="server" Height="50px" Text="2" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThree" runat="server" Height="50px" Text="3" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="operator" runat="server" Height="50px" Text="+" Width="80px" OnClick="operator_Click" style="background-color: #6699FF"  />
                <br />
                <br />
                <asp:Button ID="btnFour" runat="server" Height="50px" Text="4" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnFive" runat="server" Height="50px" Text="5" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSix" runat="server" Height="50px" Text="6" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnMin" runat="server" Height="50px" Text="-" Width="80px" OnClick="operator_Click" style="background-color: #6699FF" />
                <br />
                <br />
                <asp:Button ID="btnSeven" runat="server" Height="50px" Text="7" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEight" runat="server" Height="50px" Text="8" Width="80px" OnClick="button_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNine" runat="server" Height="50px" Text="9" Width="80px" OnClick="button_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnMul" runat="server" Height="50px" Text="*" Width="80px" OnClick="operator_Click" style="background-color: #6699FF" />
                <br />
                <br />
                <asp:Button ID="button" runat="server" Height="50px" Text="0" Width="80px" OnClick="button_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDote" runat="server" Height="50px" Text="." Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Height="50px" Text="C" Width="80px" OnClick="btnClear_Click" style="background-color: #33CCFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDiv" runat="server" Height="50px" Text="/" Width="80px" OnClick="operator_Click" style="background-color: #6699FF" />                
                <br />
                <br />
                <asp:Button ID="btnEqual" runat="server" Height="50px" Text="Spočítat" Width="400px" OnClick="btnEqual_Click" style="background-color: #993333"  />
            </center>
            <div>
                <asp:GridView ID="GridView1" runat="server" Width="328px">

                </asp:GridView>
            </div>
        </div>
 
    </ContentTemplate></asp:UpdatePanel>

</asp:Content>
