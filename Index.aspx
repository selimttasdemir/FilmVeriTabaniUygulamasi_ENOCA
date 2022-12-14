<%@ Page Title="" Language="C#" MasterPageFile="~/FilmArsiv.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow: hidden; width: 100%;">
        <div style="margin: 10px; width: 20%; float: left;">
            <div style="margin: 10px 0px 0px 25px;">
                <input style="width: auto" class="form-control" id="myInput" type="text" placeholder="Ara...">
            </div>

            <div style="width: 100%; margin-top: 25px">

                <article class="card-group-item">
                    <div class="filter-content">
                        <div class="card-body">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>Min Yıl</label>
                                    <asp:TextBox class="form-control" placeholder="1999" runat="server" ID="txtMin" TextMode="Number" />
                                </div>
                                <div class="form-group col-md-6 text-right">
                                    <label>Max Yıl</label>
                                    <asp:TextBox class="form-control" placeholder="2022" runat="server" ID="txtMax" TextMode="Number" />
                                </div>
                            </div>
                            <div>
                                <asp:Button class="btn btn-primary btn-block" Text="Bul" ID="btnBul" OnClick="btnBul_Click" runat="server" />
                            </div>
                            <br />
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:Button class="btn btn-primary btn-block" ID="btnSirala_k_b" OnClick="btnSirala_k_b_Click" Text="Artan Yıl" runat="server" />
                                </div>
                                <div class="form-group col-md-6 text-right">
                                    <asp:Button class="btn btn-primary btn-block" ID="btnSirala_b_k" OnClick="btnSirala_b_k_Click" Text="Azalan Yıl" runat="server" />
                                </div>
                            </div>
                        </div>
                        <!-- card-body.// -->
                    </div>
                </article>
                <!-- card-group-item.// -->

            </div>
        </div>
        <div style="margin: 10px; width: 70%; float: right;">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th style="width: auto; height: auto;">No.:</th>
                        <th style="width: auto; height: auto;">Film Adı</th>
                        <th style="width: auto; height: auto;">Yapım Tarihi</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <tr style="height: auto; font-family: 'Arial'">
                        <asp:Repeater ID="rptListe" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="table-primary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmID") %></td>
                                    <td class="table-secondary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmAdi") %></td>
                                    <td class="table-info" style="width: 150px; text-align: center;"><%# DataBinder.Eval(Container.DataItem, "FilmYapimYili") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>

</asp:Content>
