<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apply volunteer.aspx.cs" Inherits="WebApplication3.Volunteer_MGT.WebForm1" %>
<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
    <style type="text/css">
                           
        .style22
        {
            text-align: center;
        }
                           
        .style23
        {
            height: 47px;
        }
                           
        .style25
        {
            text-align: center;
            width: 59px;
        }
        .style26
        {
            height: 47px;
            width: 59px;
        }
        .style29
        {
            height: 47px;
            width: 70px;
        }
        .style31
        {
            text-align: center;
            width: 76px;
        }
        .style32
        {
            width: 70px;
        }
        .style33
        {
            text-align: center;
            width: 70px;
        }
                           
        .style34
        {
            text-align: left;
        }
                           
        .style35
        {
            margin-bottom: 0px;
        }
                           
        .style36
        {
            width: 70px;
            height: 45px;
        }
        .style37
        {
            height: 45px;
        }
                 
        .style38
        {
            width: 70px;
            height: 36px;
        }
        .style39
        {
            height: 36px;
        }
                 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
           <table cellspacing="0">
        <tr>
            <td class="style32">
                </td>
            <td colspan="4">
              
               
                ทางองค์กรขอขอบพระคุณทุกท่านที่ให้ความสนใจ และเป็นส่วนหนึ่งกับเรา</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td colspan="2">
                <strong>ข้อมูลส่วนที่ 1 : ข้อมูลส่วนบุคคล</strong></td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                </td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                คำขึ้นต้น</td>
            <td class="style50">
                <asp:RadioButtonList ID="rblSalutation" runat="server" Width="231px" 
                    CssClass="style35" ValidationGroup="a">
                    <asp:ListItem Value="Mister">นาย</asp:ListItem>
                    <asp:ListItem Value="Mrs">นาง</asp:ListItem>
                    <asp:ListItem Value="Miss">นางสาว</asp:ListItem>
                    <asp:ListItem Value="Boy">เด็กชาย</asp:ListItem>
                    <asp:ListItem Value="Girl">เด็กหญิง</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="rblSalutation" ErrorMessage="กรุณาเลือกคำนำหน้าชื่อด้วยค่ะ" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style39" valign="top">
                <asp:Label ID="Label1" runat="server" Text="ชื่อ" CssClass="style25"></asp:Label>
            </td>
            <td class="style50" valign="top">
                <asp:TextBox ID="txtThaiName" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtThaiName" ErrorMessage="กรุณากรอกชื่อ" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label2" runat="server" Text="นามสกุล" CssClass="style25"></asp:Label>
            </td>
            <td valign="top">
                <asp:TextBox ID="txtThaiLastName" runat="server" Width="234px" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtThaiLastName" ErrorMessage="กรุณากรอกนามสกุล" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                ชื่อ (ภาษาอังกฤษ)</td>
            <td class="style50">
                <asp:TextBox ID="txtEngName" runat="server" Width="234px" 
                    ontextchanged="txtEngName_TextChanged" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtEngName" ErrorMessage="กรุณากรอกชื่อภาษาอังกฤษ" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td valign="top">
                นามสกุล(ภาษาอังกฤษ)</td>
            <td class="style51">
                <asp:TextBox ID="txtEngLastName" runat="server" Width="234px" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style42" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtEngLastName" ErrorMessage="กรุณากรอกนามสกุลภาษาอังกฤษ" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                ชื่อเล่น</td>
            <td class="style50">
                <asp:TextBox ID="txtNickName" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtNickName" ErrorMessage="กรุณากรอกชื่อเล่น" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                วันเกิด</td>
            <td class="style50">
                <BDP:BasicDatePicker ID="dpkBDate" runat="server" ValidationGroup="a" 
                    DateFormat="dd-MM-yyyy" />
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="dpkBDate" ErrorMessage="กรุณาเลือกวันเกิดด้วย" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                เพศ</td>
            <td class="style50">
                <asp:RadioButtonList ID="rblGender" runat="server" Width="230px" 
                    ValidationGroup="a">
                    <asp:ListItem Value="Male">ชาย</asp:ListItem>
                    <asp:ListItem Value="Female">หญิง</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="rblGender" ErrorMessage="กรุณาเลือกเพศ" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                สถานภาพการสมรส</td>
            <td>
                <asp:RadioButtonList ID="rblMarital" runat="server" Width="233px" 
                    ValidationGroup="a">
                    <asp:ListItem Value="Single">โสด</asp:ListItem>
                    <asp:ListItem Value="Married">สมรส</asp:ListItem>
                    <asp:ListItem Value="Divorced">หย่าร้าง</asp:ListItem>
                    <asp:ListItem Value="Widowed">หม้าย</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="rblMarital" ErrorMessage="กรุณาเลือกสถานภาพสมรส" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                ที่อยู่</td>
            <td class="style50">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="321px" 
                    Height="24px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="กรุณากรอกที่อยู๋" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                จังหวัด</td>
            <td class="style50">
                <asp:DropDownList ID="lstProvince" runat="server" DataSourceID="Province" 
                    DataTextField="PROVINCE_NAME" DataValueField="PROVINCE_ENGNAME" 
                    ValidationGroup="a">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Province" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [PROVINCE_NAME], [PROVINCE_ENGNAME] FROM [province]">
                </asp:SqlDataSource>
            </td>
            <td class="style41" valign="top">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                รหัสไปรษณีย์</td>
            <td class="style50">
                <asp:TextBox ID="txtZipCode" runat="server" Width="234px" MaxLength="5" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41" valign="top">
                <asp:Label ID="lblzip" runat="server" ForeColor="Red" 
                    Text="กรุณากรอกรหัสไปรษณีย์ให้ถูกต้อง" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                เบอร์โทรศัพท์ที่สามารถติดต่อได้</td>
            <td>
                <asp:TextBox ID="txtMobile1" runat="server" Width="231px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtMobile1" 
                    ErrorMessage="กรุณากรอกเบอร์โทรศัพท์ที่สามารถติดต่อได้" ForeColor="Red" 
                    ValidationGroup="ฟ"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                เบอร์โทรศัพท์มือถือ</td>
            <td>
                <asp:TextBox ID="txtMobile2" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                เบอร์โทรศัพท์บ้าน</td>
            <td class="style50">
                <asp:TextBox ID="txtHomePhone" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                อีเมลล์</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                อาชีพ</td>
            <td>
                <asp:DropDownList ID="lstOccupation" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Enter Career">กรุณาระบุอาขีพ</asp:ListItem>
                    <asp:ListItem Value="student">นักเรียนนักศึกษา</asp:ListItem>
                    <asp:ListItem Value="Government Officer">ข้าราชการ</asp:ListItem>
                    <asp:ListItem Value="State Enterprise">พนักงานรัฐวิสาหกิจ</asp:ListItem>
                    <asp:ListItem Value="Private Company">พนักงานเอกชน</asp:ListItem>
                    <asp:ListItem Value="Business owner">ประกอบธุรกิจส่วนตัว</asp:ListItem>
                    <asp:ListItem Value="NGOs">เจ้าหน้าที่เอ็นจีโอ</asp:ListItem>
                    <asp:ListItem Value="Housewife">แม่บ้าน</asp:ListItem>
                    <asp:ListItem Value="Doctor/Medical Specialist">แพทย์/นักเทคนิคการแพทย์ </asp:ListItem>
                    <asp:ListItem Value="Designer">นักออกแบบ</asp:ListItem>
                    <asp:ListItem Value="Farmer">เกษตรกร</asp:ListItem>
                    <asp:ListItem Value="Merchant">ค้าขาย</asp:ListItem>
                    <asp:ListItem Value="Architectuer/Dectorator">สถาปนิค/นักออกแบบ</asp:ListItem>
                    <asp:ListItem Value="teacher">ครู/อาจารย์</asp:ListItem>
                    <asp:ListItem Value="unemployment">ว่างงาน</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCareer" runat="server" ForeColor="Red" Text="กรุณาระบุอาชีพ" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                สถานที่ทำงาน</td>
            <td class="style50">
                <asp:TextBox ID="txtWrokplace" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style41">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style23" valign="top">
                ระดับการศึกษาสูงสุด</td>
            <td class="style52">
                <asp:RadioButtonList ID="rblEduLevel" runat="server" Width="256px" 
                    onselectedindexchanged="rblEduLevel_SelectedIndexChanged" 
                    AutoPostBack="True" ontextchanged="rblEduLevel_TextChanged" ValidationGroup="a">
                    <asp:ListItem Value="Primary">ประถมศึกษา</asp:ListItem>
                    <asp:ListItem Value="PreHighSchool">มัธยมศึกษาตอนต้น</asp:ListItem>
                    <asp:ListItem Value="HighSchool">มัธยมศึกษาตอนปลาย/เทียบเท่า</asp:ListItem>
                    <asp:ListItem Value="Diploma">อนุปริญญา/เทียบเท่า</asp:ListItem>
                    <asp:ListItem Value="Bachelor">ปริญญาตรี</asp:ListItem>
                    <asp:ListItem Value="PostGrad">สูงกว่าปริญญาตรี</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style43" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="rblEduLevel" ErrorMessage="กรุณาระบุระดับการศึกษา" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td valign="top">
                สาขาวิชาที่ศึกษา</td>
            <td>
                <asp:DropDownList ID="lstEduMajor" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Faculty_Name" DataValueField="Faculty_Name" Enabled="False" 
                    ValidationGroup="a">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [Faculty_Name] FROM [Faculty]"></asp:SqlDataSource>
            </td>
            <td class="style43" valign="top">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td valign="top">
                <strong>ข้อมูลส่วนที่ 2</strong></td>
            <td class="style52">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                คุณมีใบขับขี่ต่อไปนี้หรือไม่</td>
            <td class="style52">
                <asp:CheckBoxList ID="cblVehicleLic" runat="server" Width="252px" 
                    onselectedindexchanged="cblVehicleLic_SelectedIndexChanged" 
                    ValidationGroup="a">
                    <asp:ListItem Value="Car">รถยนต์</asp:ListItem>
                    <asp:ListItem Value="Motorcycle">มอร์เตอร์ไซค์</asp:ListItem>
                    <asp:ListItem Value="Truck">รถบรรทุก</asp:ListItem>
                    <asp:ListItem Value="Boat">เรือ</asp:ListItem>
                    <asp:ListItem Value="Airoplane">เครื่องบิน</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                โรคประจำตัว</td>
            <td class="style52">
                <asp:RadioButtonList ID="rblSickness" runat="server" Width="159px" 
                    onselectedindexchanged="rblSickness_SelectedIndexChanged" 
                    AutoPostBack="True" ValidationGroup="a">
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Yes">มี</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="rblSickness" ErrorMessage="กรุณาเลือกโรคประจำตัว" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                ถ้ามีกรุณาระบุอาการ</td>
            <td class="style52">
                <asp:TextBox ID="txtSickness" runat="server" Width="234px" Enabled="False" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style43" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtSickness" ErrorMessage="กรุณาระบุอาการป่วย" 
                    ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                บุคคลที่สามารถติดต่อได้ในกรณีฉุกเฉิน</td>
            <td class="style52">
                <asp:TextBox ID="txtContactPerson" runat="server" Width="234px" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style43" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtContactPerson" 
                    ErrorMessage="กรุณาระบุบุคคลที่สามารถติดต่อได้" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                เบอร์โทรศัพท์ที่สามารถติดต่อได้ในกรณีฉุกเฉิน</td>
            <td class="style52">
                <asp:TextBox ID="txtContactNo" runat="server" Width="234px" ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style43" valign="top">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtContactNo" 
                    ErrorMessage="กรุณาระบุเบอร์โทรที่สามารถติดต่อได้ในกรณีฉุกเฉิน" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style23" valign="top">
                เวลาที่สามารถเข้าร่วมกิจกรรมได้</td>
            <td class="style52">
                <asp:CheckBoxList ID="cblJoinedTime" runat="server" Width="197px" 
                    ValidationGroup="a">
                    <asp:ListItem Value="1">วันธรรมดา</asp:ListItem>
                    <asp:ListItem Value="2">วันหยุด</asp:ListItem>
                    <asp:ListItem Value="3">ทุกวัน</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="style43" valign="top">
                <asp:Label ID="lblJoinTime" runat="server" 
                    Text="กรุณาระบุช่วงเวลาที่เข้าร่วมกิจกรรมได้อย่างน้อย 1 รายการ" 
                    ForeColor="Red" Visible="False"></asp:Label>
                <br />
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style23" valign="top">
                กิจกรรมที่สนใจ</td>
            <td class="style52">
                <asp:CheckBoxList ID="cblInterest" runat="server" Width="259px" 
                    onselectedindexchanged="cblInterest_SelectedIndexChanged" 
                    ValidationGroup="a">
                    <asp:ListItem Value="1">การรณรงค์ด้วยสันติวิธี</asp:ListItem>
                    <asp:ListItem Value="2">ระดมทุน</asp:ListItem>
                    <asp:ListItem Value="3">งานผลิตสื่อ</asp:ListItem>
                    <asp:ListItem Value="4">งานออกแบบและจัดนิทรรศการ</asp:ListItem>
                    <asp:ListItem Value="5">งานบริหารและจัดการสำนักงาน</asp:ListItem>
                    <asp:ListItem Value="6">งานวิจัย</asp:ListItem>
                    <asp:ListItem Value="7">งานรณรงค์และเฝ้าระวังมลพิษทางน้ำ</asp:ListItem>
                    <asp:ListItem Value="8">งานรณรงค์ทางด้านสภาวะโลกร้อน</asp:ListItem>
                    <asp:ListItem Value="9">งานรณรงค์เยาวชนยุคใหม่ใส่ใจสิ่งแวดล้อม</asp:ListItem>
                    <asp:ListItem Value="10">งานรณรงค์ทางด้านเกษครกรรมยั่งยืน</asp:ListItem>
                    <asp:ListItem Value="11">งานรณรงค์ทางด้านมหาสมุทร</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="style43" valign="top">
                <asp:Label ID="lblInterest" runat="server" 
                    Text="กรุณาระบุกิจกรรมที่สนใจอย่างน้อย 1 กิจกรรม" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                เขตพื้นที่ที่สามารถเข้าร่วมกิจกรรมได้</td>
            <td class="style52">
                <asp:RadioButtonList ID="rblJoinArea" runat="server" 
                    onselectedindexchanged="rblJoinArea_SelectedIndexChanged" 
                    ValidationGroup="a" AutoPostBack="True">
                    <asp:ListItem Value="1">กรุงเทพฯ และปริมณฑล</asp:ListItem>
                    <asp:ListItem Value="2">ทุกที่</asp:ListItem>
                    <asp:ListItem Value="3">อื่นๆ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="rblJoinArea" 
                    ErrorMessage="กรุณาเลือกขตพื้นที่ที่สามารถข้าร่วมกิจกรรมได้" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top">
                กรุณาเลือกขอบเขตพื้นที่ที่สามารถเข้าร่วมได้</td>
            <td class="style52">
               
              
                <asp:DropDownList ID="ddlJoinedArea" runat="server" DataSourceID="ProNotBkk" 
                    Enabled="False" DataTextField="PROVINCE_NAME" 
                    DataValueField="PROVINCE_ENGNAME" AutoPostBack="True" ValidationGroup="a">
                </asp:DropDownList>
               
              
                <asp:SqlDataSource ID="ProNotBkk" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT PROVINCE_NAME, PROVINCE_ENGNAME FROM PROVINCE WHERE PROVINCE_ENGNAME &lt;&gt;'Bangkok'">
                </asp:SqlDataSource>
               
              
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style22" valign="top">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td valign="top" colspan="2">
                <strong>ข้อมูลส่วนที่ 3<br />
                </strong>&nbsp;<div class="row">
                    <span>โปรดระบุทักษะและความสามารถของท่าน
                    <br />
                    ท่านมีทักษะใดบ้างต่อไปนี้<br />
                    - ไม่มี = ไม่มีเลย ไม่เคยทำมาก่อนเลย<br />
                    - พอใช้ = เคยเรียนในโรงเรียน แต่ไม่มีประสบการณ์ทำงานเลย<br />
                    - ปานกลาง = มีประสบการณ์การทำงานมาอย่างน้อย 6 เดือน<br />
                    - ดีมาก = มีประสบการณ์การทำงาน</span></div>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                </td>
            <td class="style23" valign="top">
                การพัฒนาโปรแกรม <span>( programming , database design, website development )</span></td>
            <td class="style23">
                <asp:DropDownList ID="ddlProgramming" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style23">
                </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                <span>การถ่ายรูป</span></td>
            <td class="style52">
                <asp:DropDownList ID="ddlPhotographing" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                <span>งานด้าน copywriting</span></td>
            <td class="style52">
                <asp:DropDownList ID="ddlCopyWriting" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                <span>การขับเรือ</span></td>
            <td class="style52">
                <asp:DropDownList ID="ddlBoat" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                <span>การปีน</span></td>
            <td class="style52">
                <asp:DropDownList ID="ddlClimb" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                <span>การผลิตวีดิโอและสื่อสิ่งพิมพ์</span></td>
            <td class="style52">
                <asp:DropDownList ID="ddlMediaProduction" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style22" valign="top">
                <div class="style34">
                    <label>
                    <span>การออกแบบและจัดนิทรรศการ</span></label></div>
            </td>
            <td class="style52">
                <asp:DropDownList ID="ddlExhibition" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style22" valign="top">
                <div class="style34">
                    <label>
                    <span>กราฟฟิกดีไซน์</span></label></div>
            </td>
            <td class="style52">
                <asp:DropDownList ID="ddlGraphicDesign" runat="server" ValidationGroup="a">
                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style37" valign="top">
                ทักษะภาษาต่างประเทศ<asp:SqlDataSource 
                    ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([Skill_ID] = @Skill_ID)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="9" Name="Skill_ID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="p2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    onselecting="SqlDataSource6_Selecting" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4 AND  [SI_ID] &lt;&gt; @SI_ID5) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang5" Name="SI_ID5" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4 AND  [SI_ID] &lt;&gt; @SI_ID5 AND  [SI_ID] &lt;&gt; @SI_ID6) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang5" Name="SI_ID5" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang6" Name="SI_ID6" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4 AND  [SI_ID] &lt;&gt; @SI_ID5 AND  [SI_ID] &lt;&gt; @SI_ID6 AND  [SI_ID] &lt;&gt; @SI_ID7) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang5" Name="SI_ID5" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang6" Name="SI_ID6" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang7" Name="SI_ID7" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4 AND  [SI_ID] &lt;&gt; @SI_ID5 AND  [SI_ID] &lt;&gt; @SI_ID6 AND  [SI_ID] &lt;&gt; @SI_ID7 AND [SI_ID] &lt;&gt; @SI_ID8) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang5" Name="SI_ID5" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang6" Name="SI_ID6" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang7" Name="SI_ID7" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLangLevel8" Name="SI_ID8" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:GPConnectionString %>" 
                    SelectCommand="SELECT [SI_ID], [Skill_ID], [SI_Name] FROM [SkillItems] WHERE ([SI_ID] &lt;&gt; @SI_ID AND [SI_ID] &lt;&gt; @SI_ID2 AND  [SI_ID] &lt;&gt; @SI_ID3  AND  [SI_ID] &lt;&gt; @SI_ID4 AND  [SI_ID] &lt;&gt; @SI_ID5 AND  [SI_ID] &lt;&gt; @SI_ID6 AND  [SI_ID] &lt;&gt; @SI_ID7 AND [SI_ID] &lt;&gt; @SI_ID8 AND [SI_ID] &lt;&gt; @SI_ID9) AND Skill_ID =9">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlLang1" Name="SI_ID" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang2" Name="SI_ID2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang3" Name="SI_ID3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang4" Name="SI_ID4" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang5" Name="SI_ID5" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang6" Name="SI_ID6" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang7" Name="SI_ID7" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang8" Name="SI_ID8" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="ddlLang9" Name="SI_ID9" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style37" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Width="677px">
                    <asp:DropDownList ID="ddlLang1" runat="server" Width="147px" Height="22px" 
                    DataMember="DefaultView" DataSourceID="SqlDataSource2" 
                    DataTextField="SI_Name" DataValueField="SI_ID" ValidationGroup="b">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlLangLevel1" runat="server" ValidationGroup="b">
                        <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                        <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                        <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                        <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                        <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                    Text="เพิ่มทักษะภาษา" Width="114px" ValidationGroup="b" />
                    <asp:Label ID="lblLangErr1" runat="server" ForeColor="Red" 
                    Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <asp:DropDownList ID="ddlLang2" runat="server" DataSourceID="p2" 
                            DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                            ValidationGroup="b" Width="147px">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlLangLevel2" runat="server" ValidationGroup="b">
                            <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                            <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                            <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                            <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                            <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnadd2" runat="server" onclick="btnadd2_Click" 
                            Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                            ControlToCompare="ddlLang1" ControlToValidate="ddlLang2" 
                            ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                            ValidationGroup="b"></asp:CompareValidator>
                        &nbsp;
                        <asp:Label ID="lblLangErr2" runat="server" ForeColor="Red" 
                            Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                        <asp:Panel ID="Panel3" runat="server" Visible="False">
                            <asp:DropDownList ID="ddlLang3" runat="server" DataSourceID="SqlDataSource3" 
                                DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                ValidationGroup="b" Width="147px">
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlLangLevel3" runat="server" ValidationGroup="b">
                                <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnadd3" runat="server" onclick="btnadd3_Click" 
                                Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                            <asp:CompareValidator ID="CompareValidator4" runat="server" 
                                ControlToCompare="ddlLang2" ControlToValidate="ddlLang3" 
                                ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                ValidationGroup="b"></asp:CompareValidator>
                            &nbsp;
                            <asp:Label ID="lblLangErr3" runat="server" ForeColor="Red" 
                                Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                            <asp:Panel ID="Panel4" runat="server" Visible="False">
                                <asp:DropDownList ID="ddlLang4" runat="server" DataSourceID="SqlDataSource4" 
                                    DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                    ValidationGroup="b" Width="147px">
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlLangLevel4" runat="server" ValidationGroup="b">
                                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Button ID="btnadd4" runat="server" onclick="btnadd4_Click" 
                                    Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                <asp:CompareValidator ID="CompareValidator5" runat="server" 
                                    ControlToCompare="ddlLang3" ControlToValidate="ddlLang4" 
                                    ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                    ValidationGroup="b"></asp:CompareValidator>
                                &nbsp;<asp:Label ID="lblLangErr4" runat="server" ForeColor="Red" 
                                    Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                <asp:Panel ID="Panel5" runat="server" Visible="False">
                                    <asp:DropDownList ID="ddlLang5" runat="server" DataSourceID="SqlDataSource5" 
                                        DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                        ValidationGroup="b" Width="147px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="ddlLangLevel5" runat="server" ValidationGroup="b">
                                        <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                        <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                        <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                        <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                        <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="btnadd5" runat="server" onclick="btnadd5_Click" 
                                        Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" 
                                        ControlToCompare="ddlLang4" ControlToValidate="ddlLang5" 
                                        ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                        ValidationGroup="b"></asp:CompareValidator>
                                    &nbsp;<asp:Label ID="lblLangErr5" runat="server" ForeColor="Red" 
                                        Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                                        <asp:DropDownList ID="ddlLang6" runat="server" DataSourceID="SqlDataSource6" 
                                            DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                            ValidationGroup="b" Width="147px">
                                        </asp:DropDownList>
                                        <asp:DropDownList ID="ddlLangLevel6" runat="server" ValidationGroup="b">
                                            <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                            <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                            <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                            <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                            <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btnadd6" runat="server" onclick="btnadd6_Click" 
                                            Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                        <asp:CompareValidator ID="CompareValidator7" runat="server" 
                                            ControlToCompare="ddlLang5" ControlToValidate="ddlLang6" 
                                            ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                            ValidationGroup="b"></asp:CompareValidator>
                                        &nbsp;<asp:Label ID="lblLangErr6" runat="server" ForeColor="Red" 
                                            Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                        <asp:Panel ID="Panel7" runat="server" Visible="False">
                                            <asp:DropDownList ID="ddlLang7" runat="server" DataSourceID="SqlDataSource7" 
                                                DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                                ValidationGroup="b" Width="147px">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlLangLevel7" runat="server" ValidationGroup="b">
                                                <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                                <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                                <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                                <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                                <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnadd7" runat="server" onclick="btnadd7_Click" 
                                                Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                            <asp:CompareValidator ID="CompareValidator8" runat="server" 
                                                ControlToCompare="ddlLang6" ControlToValidate="ddlLang7" 
                                                ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                                ValidationGroup="b"></asp:CompareValidator>
                                            &nbsp;<asp:Label ID="lblLangErr7" runat="server" ForeColor="Red" 
                                                Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                            <asp:Panel ID="Panel8" runat="server" Visible="False">
                                                <asp:DropDownList ID="ddlLang8" runat="server" DataSourceID="SqlDataSource8" 
                                                    DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                                    ValidationGroup="b" Width="147px">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="ddlLangLevel8" runat="server" ValidationGroup="b">
                                                    <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                                    <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                                    <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                                    <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                                    <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:Button ID="btnadd8" runat="server" onclick="btnadd8_Click" 
                                                    Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                                <asp:CompareValidator ID="CompareValidator9" runat="server" 
                                                    ControlToCompare="ddlLang7" ControlToValidate="ddlLang8" 
                                                    ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                                    ValidationGroup="b"></asp:CompareValidator>
                                                &nbsp;<asp:Label ID="lblLangErr8" runat="server" ForeColor="Red" 
                                                    Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                                <asp:Panel ID="Panel9" runat="server" Visible="False">
                                                    <asp:DropDownList ID="ddlLang9" runat="server" DataSourceID="SqlDataSource9" 
                                                        DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                                        ValidationGroup="b" Width="147px">
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddlLangLevel9" runat="server" ValidationGroup="b">
                                                        <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                                        <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                                        <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                                        <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                                        <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:Button ID="btnadd9" runat="server" onclick="btnadd8_Click" 
                                                        Text="เพิ่มทักษะภาษา" ValidationGroup="b" Width="112px" />
                                                    <asp:CompareValidator ID="CompareValidator10" runat="server" 
                                                        ControlToCompare="ddlLang8" ControlToValidate="ddlLang9" 
                                                        ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                                        ValueToCompare="b"></asp:CompareValidator>
                                                    &nbsp;<asp:Label ID="lblLangErr9" runat="server" ForeColor="Red" 
                                                        Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                                    <asp:Panel ID="Panel10" runat="server" Visible="False">
                                                        <asp:DropDownList ID="ddlLang10" runat="server" DataSourceID="SqlDataSource10" 
                                                            DataTextField="SI_Name" DataValueField="SI_ID" Height="22px" 
                                                            ValidationGroup="b" Width="147px">
                                                        </asp:DropDownList>
                                                        <asp:DropDownList ID="ddlLangLevel10" runat="server" ValidationGroup="b">
                                                            <asp:ListItem Value="Level">ระดับขั้น</asp:ListItem>
                                                            <asp:ListItem Value="No">ไม่มี</asp:ListItem>
                                                            <asp:ListItem Value="Fair">พอใช้</asp:ListItem>
                                                            <asp:ListItem Value="good">ปานกลาง</asp:ListItem>
                                                            <asp:ListItem Value="Excellence">ดีมาก</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:CompareValidator ID="CompareValidator11" runat="server" 
                                                            ControlToCompare="ddlLang9" ControlToValidate="ddlLang10" 
                                                            ErrorMessage="กรุณาเลือกภาษาใหม่" ForeColor="Red" Operator="NotEqual" 
                                                            ValueToCompare="b"></asp:CompareValidator>
                                                        &nbsp;<asp:Label ID="lblLangErr10" runat="server" ForeColor="Red" 
                                                            Text="กรุณาระบุภาษาหรือระดับขั้นใหม่" Visible="False"></asp:Label>
                                                    </asp:Panel>
                                                </asp:Panel>
                                            </asp:Panel>
                                        </asp:Panel>
                                    </asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
                            <br />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                โปรดระบุเหตุผลในการเป็นอาสาสมัคร                                  </asp:Panel>
                                            </asp:Panel>
                                        </asp:Panel>
                                    </asp:Panel>
                                </asp:Panel>
                            </asp:Panel>
                            <br />
                        </asp:Panel>
                    </asp:Panel>
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style34" valign="top">
                โปรดระบุเหตุผลในการเป็นอาสาสมัคร/td>
            <td class="style52">
                <asp:TextBox ID="txtReason" runat="server" Height="214px" Width="323px" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style43" valign="top">
                <asp:Label ID="lblReason" runat="server" Text="กรุณาระบุเหตุผลในการเป็นอาสาสมัคร" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td valign="top">
                สิ่งที่คาดหวังจากการเป็นอาสาสมัคร</td>
            <td class="style53">
                <asp:TextBox ID="txtExpected" runat="server" Height="214px" Width="323px" 
                    ValidationGroup="a"></asp:TextBox>
            </td>
            <td class="style44" valign="top">
                <asp:Label ID="lblExpected" runat="server" Text="กรุณาระบุความคาดหวัง" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td class="style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                &nbsp;</td>
            <td class="style40">
                </td>
            <td class="style54">
                </td>
            <td class="style48">
                </td>
            <td class="style47">
                </td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style22" colspan="3">
                <asp:Button ID="btnConfirm" runat="server" Text="ยืนยันข้อมูล" 
                    onclick="btnConfirm_Click1" ValidationGroup="a" />
                &nbsp;
                <asp:Button ID="btnClear" runat="server" Text="ล้างข้อมูล" 
                    onclick="btnClear_Click" ValidationGroup="a" />
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style56">
                </td>
            <td class="style57">
                </td>
            <td class="style59">
                </td>
            <td class="style60">
                </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td class="style62">
                </td>
            <td class="style63">
                </td>
            <td class="style64">
                </td>
            <td class="style65">
                </td>
        </tr>
        <tr>
            <td class="style32">
                </td>
            <td>
                </td>
            <td>
                </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
        
    </table>    
</asp:Content>
