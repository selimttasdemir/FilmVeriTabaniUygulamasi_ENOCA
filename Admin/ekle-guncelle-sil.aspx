<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ekle-guncelle-sil.aspx.cs" Inherits="FilmVeriTabaniUygulamasi_ENOCA.Admin.ekle_guncelle_sil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-3" style="margin-top: 50px; overflow: hidden; width: 100%;">
        <div class="col-md-1" style="margin: 10px auto auto 50px; width: 35%; float: left;">
            <div class="col-md-6" style="float: right;">
                <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="dropdownMenuButton" runat="server">
                </asp:DropDownList>
            </div>
            <br />
            <div class="col-md-6" style="float: left">
                <br />
                <br />
                <asp:TextBox class="form-control" ID="txtFilmAd" runat="server" placeholder="Film Adı" TextMode="SingleLine"></asp:TextBox>
                <br />
                <asp:TextBox class="form-control" ID="txtYapimYili" runat="server" placeholder="Yapım Yılı" TextMode="SingleLine"></asp:TextBox>
                <br />
                <asp:Button class="btn btn-primary btn-block" Text="Kaydet" ID="btnKaydet" OnClick="btnKaydet_Click" runat="server" />
                <asp:Button class="btn btn-primary btn-block" Text="Güncelle" ID="btnGuncelle" OnClick="btnGuncelle_Click" runat="server" />
                <br />
                <br />
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Button class="btn btn-primary btn-block" ID="btnSirala_k_b" OnClick="btnSirala_k_b_Click" Text="Artan Yıl" runat="server" />
                    </div>
                    <br />
                    <div class="form-group col-md-6 text-right">
                        <asp:Button class="btn btn-primary btn-block" ID="btnSirala_b_k" OnClick="btnSirala_b_k_Click" Text="Azalan Yıl" runat="server" />
                    </div>
                </div>
            </div>
            <asp:Label Text="" ID="lblDurum" runat="server" />
        </div>
        <div class="col-md-2" style="margin: 10px; width: 55%; float: right;">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th style="width: auto; height: auto;">No.:</th>
                        <th style="width: auto; height: auto;">Film Adı</th>
                        <th style="width: auto; height: auto;">Yapım Tarihi</th>
                        <th style="width: 25px; height: auto;">Sil</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <tr style="height: auto; font-family: 'Arial'">
                        <asp:Repeater ID="rptListe" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="table-primary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmID") %></td>
                                    <td class="table-secondary" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmAdi") %></td>
                                    <td class="table-success" style="width: 150px;"><%# DataBinder.Eval(Container.DataItem, "FilmYapimYili") %></td>
                                    <td>&nbsp;<a href="ekle-guncelle-sil.aspx?FilmID=<%#Eval("FilmID")%>&islem=sil"><img style="width: 20px; height: 20px;" alt="Sil" class="auto-style1" src="assets/img/sil.png" /></a></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
        </div>
    </div>

</asp:Content>
