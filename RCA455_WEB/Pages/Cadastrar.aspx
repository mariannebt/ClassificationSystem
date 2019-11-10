<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="RCA455_WEB.Pages.Cadastrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Domain Register</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentTitulo" runat="server">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <h5>Domain Register</h5>
    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="card" style="min-height: 200px">
                    <div class="card-body">
                        <nav>
                            <div class="nav nav-tabs nav-pills nav-justified nav-fill flex-column flex-sm-row" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link flex-sm-fill text-sm-center" id="nav-responsavel-tab" data-toggle="tab" href="#nav-responsavel" role="tab" aria-controls="nav-responsavel" aria-selected="true">Responsible</a>
                                <a class="nav-item nav-link flex-sm-fill text-sm-center" id="nav-sistema-tab" data-toggle="tab" href="#nav-sistema" role="tab" aria-controls="nav-sistema" aria-selected="false">System</a>
                                <a class="nav-item nav-link flex-sm-fill text-sm-center" id="nav-situacao-tab" data-toggle="tab" href="#nav-situacao" role="tab" aria-controls="nav-situacao" aria-selected="false">Situation</a>
                                <a class="nav-item nav-link flex-sm-fill text-sm-center" id="nav-tipo-tab" data-toggle="tab" href="#nav-tipo" role="tab" aria-controls="nav-tipo" aria-selected="false">Type</a>
                                <a class="nav-item nav-link flex-sm-fill text-sm-center" id="nav-retorno-tab" data-toggle="tab" href="#nav-retorno" role="tab" aria-controls="nav-retorno" aria-selected="false">Return</a>
                            </div>
                        </nav>
                        <!-- Responsável -->

                        <div class="tab-content" id="nav-tabContent">
                            <br />
                            <div class="tab-pane fade show active" id="nav-responsavel" role="tabpanel" aria-labelledby="nav-responsavel-tab">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label>Responsible: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtResponsavel" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredRespos" runat="server"
                                            ControlToValidate="txtResponsavel"
                                            ErrorMessage="Inform Responsible"
                                            ForeColor="Red" Display="Dynamic"
                                            ValidationGroup="Responsavel" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label>Description: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtDescricaoResp" runat="server" CssClass="form-control form-control-sm" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="lblMensagemSalvarRes" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <asp:Button ID="btnSalvarResp" runat="server" CssClass="btn btn-outline-success btn-sm" Text="Save"
                                            OnClick="btnSalvarResp_Click" ValidationGroup="Responsavel" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:GridView ID="gridConsultaResp" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                            AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridConsultaResp_PageIndexChanging"
                                            RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                            HeaderStyle-Wrap="false" RowStyle-Wrap="false">
                                            <EmptyDataTemplate>No responsible found </EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkResponavel" runat="server" />
                                                        <asp:Label ID="lblIdResponsavel" runat="server" Text='<%# Eval("IdResponsavel") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Responsible">
                                                    <ItemTemplate><%# Eval("Nome") %> </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="lblMensagemExcRes" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:Button ID="btnExcluirResp" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Delete" OnClick="btnExcluirResp_Click" />
                                        <asp:Button ID="btnAtualizarResp" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Update" OnClick="btnAtualizarResp_Click" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <!-- Sistema -->
                            <div class="tab-pane fade" id="nav-sistema" role="tabpanel" aria-labelledby="nav-sistema-tab">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>System: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtSistema" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredSistema" runat="server"
                                            ControlToValidate="txtSistema"
                                            ErrorMessage="Inform System"
                                            ForeColor="Red" Display="Dynamic"
                                            ValidationGroup="Sistema" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Description: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtDescricaoSist" runat="server" CssClass="form-control form-control-sm" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <asp:Button ID="btnSalvarSist" runat="server" CssClass="btn btn-outline-success btn-sm" Text="Save"
                                            OnClick="btnSalvarSist_Click" ValidationGroup="Sistema" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:GridView ID="gridSistema" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                            AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridSistema_PageIndexChanging"
                                            RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                            HeaderStyle-Wrap="false" RowStyle-Wrap="false">
                                            <EmptyDataTemplate>No system found </EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkSistema" runat="server" />
                                                        <asp:Label ID="lblIdSistema" runat="server" Text='<%# Eval("IdSistema") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="System">
                                                    <ItemTemplate><%# Eval("Nome") %> </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:Button ID="btnExcluirSist" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Delete" OnClick="btnExcluirSist_Click" />
                                        <asp:Button ID="btnAtualizarSist" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Update" OnClick="btnAtualizarSist_Click" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <!-- Situação -->
                            <div class="tab-pane fade" id="nav-situacao" role="tabpanel" aria-labelledby="nav-situacao-tab">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Situation: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtSituacao" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredSituacao" runat="server"
                                            ControlToValidate="txtSituacao"
                                            ErrorMessage="Inform Situation"
                                            ForeColor="Red" Display="Dynamic"
                                            ValidationGroup="Situacao" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Description: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtDescricaoSitu" runat="server" CssClass="form-control form-control-sm" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <asp:Button ID="btnSalvarSitu" runat="server" CssClass="btn btn-outline-success btn-sm" Text="Save"
                                            OnClick="btnSalvarSitu_Click" ValidationGroup="Situacao" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:GridView ID="gridSituacao" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                            AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridSituacao_PageIndexChanging"
                                            RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                            HeaderStyle-Wrap="false" RowStyle-Wrap="false">
                                            <EmptyDataTemplate>No situation found</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkSit" runat="server" />
                                                        <asp:Label ID="lblIdSit" runat="server" Text='<%# Eval("IdSituacao") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Situation">
                                                    <ItemTemplate><%# Eval("Nome") %> </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:Button ID="btnExcluirSitu" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Delete" OnClick="btnExcluirSitu_Click" />
                                        <asp:Button ID="btnAtualizarSitu" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Update" OnClick="btnAtualizarSitu_Click" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <!-- Tipo -->
                            <div class="tab-pane fade" id="nav-tipo" role="tabpanel" aria-labelledby="nav-tipo-tab">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Type: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtTipo" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredTipo" runat="server"
                                            ControlToValidate="txtTipo"
                                            ErrorMessage="Inform Type"
                                            ForeColor="Red" Display="Dynamic"
                                            ValidationGroup="Tipo" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Description: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtDescricaoTipo" runat="server" CssClass="form-control form-control-sm" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <asp:Button ID="btnSalvarTipo" runat="server" CssClass="btn btn-outline-success btn-sm" Text="Save"
                                            OnClick="btnSalvarTipo_Click" ValidationGroup="Tipo" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:GridView ID="gridTipo" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                            AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridTipo_PageIndexChanging"
                                            RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                            HeaderStyle-Wrap="false" RowStyle-Wrap="false">
                                            <EmptyDataTemplate>No type found</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkTipo" runat="server" />
                                                        <asp:Label ID="lblIdTipo" runat="server" Text='<%# Eval("IdTipo") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Type">
                                                    <ItemTemplate><%# Eval("Nome") %> </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label7" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:Button ID="btnExcluirTipo" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Delete" OnClick="btnExcluirTipo_Click" />
                                        <asp:Button ID="btnAtualizarTipo" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Update" OnClick="btnAtualizarTipo_Click" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <!-- Retorno -->
                            <div class="tab-pane fade" id="nav-retorno" role="tabpanel" aria-labelledby="nav-retorno-tab">
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Return: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtRetorno" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredRetorno" runat="server"
                                            ControlToValidate="txtRetorno"
                                            ErrorMessage="Inform Return"
                                            ForeColor="Red" Display="Dynamic"
                                            ValidationGroup="Retorno" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label>Description: </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:TextBox ID="txtDescricaoRet" runat="server" CssClass="form-control form-control-sm" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <asp:Button ID="btnSalvarRetorno" runat="server" CssClass="btn btn-outline-success btn-sm" Text="Save"
                                            OnClick="btnSalvarRetorno_Click" ValidationGroup="Retorno" />
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:GridView ID="gridRetorno" runat="server" CssClass="table table-hover" GridLines="None" AutoGenerateColumns="false"
                                            AllowPaging="true" EnableModelValidation="true" OnPageIndexChanging="gridRetorno_PageIndexChanging"
                                            RowStyle-BackColor="White" AlternatingRowStyle-BackColor="#f0f0f0" BorderColor="#dee2e6"
                                            HeaderStyle-Wrap="false" RowStyle-Wrap="false">
                                            <EmptyDataTemplate>No return found</EmptyDataTemplate>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkRetorno" runat="server" />
                                                        <asp:Label ID="lblIdRetorno" runat="server" Text='<%# Eval("IdRetorno") %>' Visible="false"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Return">
                                                    <ItemTemplate><%# Eval("Nome") %> </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description">
                                                    <ItemTemplate><%# Eval("Descricao") %> </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <asp:Label ID="Label8" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-11">
                                        <asp:Button ID="btnExcluirRetorno" runat="server" CssClass="btn btn-outline-secondary btn-sm" Text="Delete" OnClick="btnExcluirRetorno_Click" />
                                        <asp:Button ID="btnAtualizarRetorno" runat="server" CssClass="btn btn-outline-info btn-sm" Text="Update" OnClick="btnAtualizarRetorno_Click" />
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
