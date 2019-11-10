<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Classificacao.aspx.cs" Inherits="RCA455_WEB.Pages.Classificacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Classification</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentTitulo" runat="server">
    <div class="col-md-2"></div>
    <div class="col-md-4">
        <h5>Classification</h5>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card" style="min-height: 200px">
                    <div class="card-body">
                        <br />
                        <h6>No Classification
                            <asp:Label ID="lblMensagemQntSem" runat="server"></asp:Label></h6>
                        <br />
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-11">
                                <asp:GridView ID="gridSemClassificacao" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                    AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridSemClassificacao_PageIndexChanging"
                                    RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                    HeaderStyle-Wrap="false" RowStyle-Wrap="true">
                                    <EmptyDataTemplate>No register found </EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSemClass" runat="server" />
                                                <asp:Label ID="lblIdRegra" runat="server" Text='<%# Eval("Id_regra") %>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="System">
                                            <ItemTemplate>
                                                <%# Eval("Sistema.Nome") %>
                                                <%--<asp:DropDownList ID="ddlSistemaSem" runat="server" CssClass="form-control form-control-sm"></asp:DropDownList>--%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Responsible">
                                            <ItemTemplate><%# Eval("Responsavel.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Situation">
                                            <ItemTemplate><%# Eval("Situacao.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type">
                                            <ItemTemplate><%# Eval("Tipo.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Return">
                                            <ItemTemplate><%# Eval("Retorno.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-8">
                                <a href="#" data-target="#janela" data-toggle="modal" class="btn btn-outline-secondary btn-sm">Classify</a>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="card-body">
                        <br />
                        <h6>With Classification<asp:Label ID="lblMensagemCom" runat="server"></asp:Label></h6>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-11">
                            <div style="overflow-x: auto; width: 100%">
                                <asp:GridView ID="gridComClassificacao" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                    AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridComClassificacao_PageIndexChanging"
                                    RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                    HeaderStyle-Wrap="false" RowStyle-Wrap="true">
                                    <EmptyDataTemplate>No register found </EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkComClass" runat="server" />
                                                <asp:Label ID="lblIdRegra2" runat="server" Text='<%# Eval("Id_regra") %>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="System">
                                            <ItemTemplate><%# Eval("Sistema.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Responsible">
                                            <ItemTemplate><%# Eval("Responsavel.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Situation">
                                            <ItemTemplate><%# Eval("Situacao.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type">
                                            <ItemTemplate><%# Eval("Tipo.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Return">
                                            <ItemTemplate><%# Eval("Retorno.Nome") %> </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <%--<div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2">
                            <a href="#" data-target="#janela" data-toggle="modal" class="btn btn-outline-secondary btn-sm">Atualizar</a>
                        </div>
                    </div>--%>
                    <br />
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div id="janela" class="modal fade">
            <asp:UpdatePanel ID="updtPanel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5>To Classify Rules</h5>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <%--<div class="col-md-1"></div>--%>
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>System: </label>
                                                </div>
                                                <div class="col-md-10">
                                                    <asp:DropDownList ID="ddlSistema" runat="server" CssClass="form-control form-control-sm" OnSelectedIndexChanged="ddlSistema_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="requiredSistema" runat="server"
                                                        ControlToValidate="ddlSistema"
                                                        ErrorMessage="Inform System"
                                                        ForeColor="Red" Display="Dynamic"
                                                        ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>Responsible: </label>
                                                </div>
                                                <div class="col-md-10">
                                                    <asp:DropDownList ID="ddlResponsavel" runat="server" CssClass="form-control form-control-sm" OnSelectedIndexChanged="ddlResponsavel_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredResponsavel" runat="server"
                                                        ControlToValidate="ddlResponsavel"
                                                        ErrorMessage="Inform Responsible"
                                                        ForeColor="Red" Display="Dynamic"
                                                        ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>Situation: </label>
                                                </div>
                                                <div class="col-md-10">
                                                    <asp:DropDownList ID="ddlSituacao" runat="server" CssClass="form-control form-control-sm" OnSelectedIndexChanged="ddlSituacao_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredSituacao" runat="server"
                                                        ControlToValidate="ddlSituacao"
                                                        ErrorMessage="Inform Situation"
                                                        ForeColor="Red" Display="Dynamic"
                                                        ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>Type: </label>
                                                </div>
                                                <div class="col-md-10">
                                                    <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-control form-control-sm" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredTipo" runat="server"
                                                        ControlToValidate="ddlTipo"
                                                        ErrorMessage="Inform Type"
                                                        ForeColor="Red" Display="Dynamic"
                                                        ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <label>Return: </label>
                                                </div>
                                                <div class="col-md-10">
                                                    <asp:DropDownList ID="ddlRetorno" runat="server" CssClass="form-control form-control-sm" OnSelectedIndexChanged="ddlRetorno_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredRetorno" runat="server"
                                                        ControlToValidate="ddlRetorno"
                                                        ErrorMessage="Inform Return"
                                                        ForeColor="Red" Display="Dynamic"
                                                        ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Cancel" OnClick="btnCancelar_Click" />
                                                    <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Save" 
                                                        OnClick="btnSalvar_Click" ValidationGroup="Regra" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <asp:Label ID="lblMensagemClassificacao" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlSistema" />
                    <asp:AsyncPostBackTrigger ControlID="ddlResponsavel" />
                    <asp:AsyncPostBackTrigger ControlID="ddlSituacao" />
                    <asp:AsyncPostBackTrigger ControlID="ddlTipo" />
                    <asp:AsyncPostBackTrigger ControlID="ddlRetorno" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scriptsTeste" runat="server">
</asp:Content>
