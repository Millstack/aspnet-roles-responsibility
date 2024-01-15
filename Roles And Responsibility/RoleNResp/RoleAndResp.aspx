<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeFile="RoleAndResp.aspx.cs" Inherits="RoleNResp_RoleAndResp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Role & Resp</title>

    <%--Bootstrap CSS--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <%--jQuery--%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+J2Wk5vqXn3Fm/z2N1r8f6VZJ4T3Hdvh4kXG1j4fZ6IsU2f5" crossorigin="anonymous"></script>
    <%--AJAX JS--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <%--Bootstrap JS--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <%--Using JavaScript library such as Select2--%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <script src="RoleAndRespJavaScript.js"></script>
    <link rel="stylesheet" type="text/css" href="RoleAndRespCSS.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div class="mx-5 col-md-8 mt-4 mb-2">
            <label for="email" class="text-dark fs-5 fw-normal">
                <asp:Literal ID="Literal3" Text="EMB Recording" runat="server"></asp:Literal>
            </label>
        </div>

        <div class="card mx-5 col-md-8 shadow px-4">
            <div class="card-body">

                <!-- Roles -->
                <div class="form-group col-6 mt-3">
                    <label for="email" class="col-form-label badge bg-primary text-wrap mb-4 fs-6 shadow border">
                        <i class="icon-wpforms mr-2"></i>
                        <asp:Literal ID="Literal1" Text="Roles" runat="server"></asp:Literal>
                    </label>
                </div>

                <!-- Dropdown -->
                <div class="mt-1 mb-3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" ControlToValidate="ddlRole" InitialValue="0" runat="server" ErrorMessage="Please select any role" SetFocusOnError="True" Display="Dynamic" CssClass="invalid-feedback" ToolTip="Required"></asp:RequiredFieldValidator>
                    <div class="shadow ">
                        <asp:DropDownList ID="ddlRole" ClientIDMode="Static" runat="server" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" AutoPostBack="true" class="form-control is-invalid"></asp:DropDownList>
                    </div>
                </div>

                <!-- Responsibilities -->
                <div class="form-group col-6 mt-5">
                    <label for="email" class="col-form-label badge bg-primary text-wrap mb-4 fs-6 shadow border">
                        <i class="icon-wpforms mr-2"></i>
                        <asp:Literal ID="Literal2" Text="Responsibilities" runat="server"></asp:Literal>
                    </label>
                </div>

                <div class="form-row mt-1">
                    <div class="form-group col-12 m-0">
                        <%--  ImageSet="BulletedList2"  --%>
                        <%--  ShowExpandCollapse="false"   --%>
                        <%--  NodeStyle-Height="10px"   --%>
                        <%--  Font-Names="Tahoma, Verdana, Helvetica, Arial, sans-serif, Open Sans"   --%>
                        <asp:TreeView ID="TreeView1" runat="server" Width="100%" Font-Size="12pt" ShowCheckBoxes="All" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                            ExpandDepth="FullyExpand" ShowLines="True" NodeIndent="30" onClick="ClientSideChangeSelection()" CssClass="custom-treeview">
                            <ParentNodeStyle Font-Bold="True" />
                        </asp:TreeView>
                    </div>
                </div>

                <hr>

                <div class="form-row">
                    <div class="col-md-12">
                        <div class="card-body" style="text-align: left">
                            <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" Width="80px" />
                            &nbsp;
                            <asp:Button ID="btnReset" runat="server" CssClass="btn btn-danger" Text="Reset" Width="80px" CausesValidation="False" OnClick="btnReset_Click" />
                        </div>
                        <div class="card-body">
                            <asp:Literal ID="LiteralMsg" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
