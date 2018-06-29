<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HemaEndustriFihrist._default" MaintainScrollPositionOnPostback="true" %>
<script runat="server">
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dahili Telefon Fihristi</title>
    <link href="/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="banner">
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="/images/banner.jpg">
                <asp:RectangleHotSpot Bottom="85" Top="25" Left="412" Right="636" AlternateText="Hattat Holding A.Ş." Target="_blank" NavigateUrl="http://www.hattat.com.tr/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="20" Right="160" AlternateText="Hema Endüstri A.Ş." Target="_blank" NavigateUrl="http://www.hemaendustri.com.tr/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="189" Right="329" AlternateText="Hema Otomotiv Sistemleri A.Ş." Target="_blank" NavigateUrl="http://www.hemaotomotiv.com/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="358" Right="498" AlternateText="Hema Trw Otomotiv Direksiyon Sistemleri" Target="_blank" NavigateUrl="http://www.hematrw.com.tr/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="527" Right="667" AlternateText="Hattat Traktör" Target="_blank" NavigateUrl="http://www.hattattraktor.com/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="696" Right="836" AlternateText="Hattat Otomotiv Pazarlama A.Ş." Target="_blank" NavigateUrl="http://www.hattatotomotiv.com.tr/" />
                <asp:RectangleHotSpot Bottom="145" Top="105" Left="865" Right="1005" AlternateText="Hattat Enerji ve Maden Ticaret A.Ş." Target="_blank" NavigateUrl="http://www.hemaenerji.com/" />
            </asp:ImageMap>
        </div>
        <header>
            <nav>
                <ul>
                    <li>
                        <a href="default.aspx">Anasayfa</a>
                    </li>
                    <li>
                         <asp:LinkButton ID="YoneticiGirisButtonAnasayfa" CssClass="li" runat="server" OnClick="YoneticiGirisButtonAnasayfa_Click">Yonetici Girişi</asp:LinkButton>
                    </li>
                    <li>
                         <asp:LinkButton ID="YoneticiİslemleriButtonAnasayfa" CssClass="YoneticiİslemleriButton" runat="server">Yönetici İşlemleri</asp:LinkButton>
                    </li>
                    <li>
                         <asp:LinkButton ID="HesapİslemleriButtonAnasayfa" CssClass="li" OnClick="HesapİslemleriButtonAnasayfa_Click" runat="server">Hesap İşlemleri</asp:LinkButton>
                    </li>
                    <li>
                         <asp:LinkButton ID="YoneticiCikisButtonAnasayfa" CssClass="li" runat="server" OnClick="YoneticiCikisButtonAnasayfa_Click">Çıkış</asp:LinkButton>
                    </li>
                </ul>
            </nav>
            <div class="DepartmanlarBaslik">
                Departmanlar
            </div>
        </header>
        <div class="icerik">
            <asp:Panel ID="YoneticiMenusuPanel" runat="server">
                <div class="Yonetici">
                    <div class="YoneticiMenusu">
                        <ul>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuKayıtEkleButton" CssClass="li" runat="server" OnClick="YoneticiMenusuKayıtEkleButton_Click">Kayıt Ekle</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuKayıtDuzenleButton" CssClass="li" runat="server" OnClick="YoneticiMenusuKayıtDuzenleButton_Click">Kayıt Düzenle</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuDepartmanEkleButton" CssClass="li" runat="server" OnClick="YoneticiMenusuDepartmanEkleButton_Click">Departman Ekle</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuDepartmanDuzenleButton" CssClass="li" runat="server" OnClick="YoneticiMenusuDepartmanDuzenleButton_Click">Departman Düzenle</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuDepartmanaGoreDuzenleButton" CssClass="li" runat="server" OnClick="YoneticiMenusuDepartmanaGoreDuzenleButton_Click">Departmana Göre Düzenle</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="YoneticiMenusuDisaAktarButton" CssClass="li" runat="server" OnClick="YoneticiMenusuDisaAktarButton_Click">Dışa Aktar</asp:LinkButton>
                        </li>
                        </ul>
                    </div>
                </div>
            
            </asp:Panel>
            <asp:Panel ID="MainPanel" runat="server">
            <div class="IcerikBaslik">
                Dahili Telefon Fihristi
            </div>
            <div class="MainSearch">
                <asp:TextBox ID = "MainSearchTextBox" cssClass="MainSearchTextBox" runat="server" placeholder="Aramak İstediğiniz bilgiyi giriniz"/>
                <asp:Button ID = "MainSearchButton" cssClass="MainSearchButton" runat="server" OnClick="MainSearchButton_Click" />
            </div>
            </asp:Panel>
            <div class="AramaSonucu">
                <asp:Label ID="DepartmanBaslikLabeli" cssClass="DepartmanBaslikLabeli" runat="server" Text="Label"></asp:Label>
                <asp:GridView ID="AramaTablosu" cssClass="AramaTablosu" runat="server" CellSpacing="2" BackColor="#507CD1" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="~\KisiResimleri\{0}" ControlStyle-Height="85px" ControlStyle-Width="63.5" HeaderText="Fotoğraf" SortExpression="Resim" >
<ControlStyle Height="85px" Width="63.5px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                        <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                        <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" SortExpression="Aciklama" />
                        <asp:BoundField DataField="IsTel" HeaderText="İş Tel" SortExpression="IsTel" >
<ItemStyle Width="12%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="IsTel2" HeaderText="İş Tel2" SortExpression="IsTel2" >
<ItemStyle Width="12%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="EvTel" HeaderText="Ev Tel" SortExpression="EvTel" >
<ItemStyle Width="12%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-Width="25%" DataField="Expr1" HeaderText="Departman" SortExpression="Expr1" >
<ItemStyle Width="25%"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT Kayitlar.Resim, Kayitlar.Ad, Kayitlar.Soyad, Kayitlar.Aciklama, Kayitlar.IsTel, Kayitlar.IsTel2, Kayitlar.EvTel, Departmanlar.Ad AS Expr1 FROM Kayitlar INNER JOIN Departmanlar ON Kayitlar.DepartmanID = Departmanlar.id WHERE (Kayitlar.Ad LIKE '%' + @Ad + '%') OR (Kayitlar.EvTel LIKE '%' + @EvTel + '%') OR (Kayitlar.IsTel LIKE '%' + @IsTel + '%') OR (Kayitlar.IsTel2 LIKE '%' + @IsTel2 + '%') OR (Kayitlar.Soyad LIKE '%' + @Soyad + '%') ORDER BY Kayitlar.Oncelik, Kayitlar.Ad, Kayitlar.Soyad">
                    <SelectParameters>
                        <asp:FormParameter FormField="MainSearchTextBox" Name="Ad" Type="String" />
                        <asp:FormParameter FormField="MainSearchTextBox" Name="EvTel" Type="String" />
                        <asp:FormParameter FormField="MainSearchTextBox" Name="IsTel" Type="String" />
                        <asp:FormParameter FormField="MainSearchTextBox" Name="IsTel2" Type="String" />
                        <asp:FormParameter FormField="MainSearchTextBox" Name="Soyad" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="DepartmanSecimTablosu" cssClass="DepartmanSecimTablosu" CellSpacing="2" BackColor="#507CD1" runat="server" CellPadding="23" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="~\KisiResimleri\{0}" ControlStyle-Height="85" ControlStyle-Width="63.5" HeaderText="Fotoğraf" SortExpression="Resim" >
<ControlStyle Height="85px" Width="63px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                        <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                        <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" SortExpression="Aciklama" />
                        <asp:BoundField DataField="IsTel" HeaderText="İş Tel" SortExpression="IsTel" />
                        <asp:BoundField DataField="IsTel2" HeaderText="İş Tel2" SortExpression="IsTel2" />
                        <asp:BoundField DataField="EvTel" HeaderText="Ev Tel" SortExpression="EvTel" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [Ad], [Soyad], [Aciklama], [IsTel], [IsTel2], [EvTel], [Resim] FROM [Kayitlar] WHERE ([DepartmanID] = @DepartmanID) ORDER BY [Oncelik], [Ad], [Soyad]" >
                    <SelectParameters>
                        <asp:FormParameter FormField="DepartmanlarListBox" Name="DepartmanID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="BilgiLabel" cssClass="BilgiLabel" runat="server" Text="Bilgi: Yukarıdaki Liste Organizasyon Şemasına Göre Düzenlenmiştir."></asp:Label>
            </div>
            <div class="YoneticiGirisi">
            <asp:Panel ID="YoneticiGirisPaneli" runat="server">
                <div class="YoneticiGirisBaslik"><asp:Label ID="YoneticiGirisBaslikLabel" cssClass="YoneticiGirisBaslikLabel" runat="server" Text="Yönetici Girişi"></asp:Label></div>
                <div class="KullaniciAdi"><asp:Label ID="YoneticiGirisKullaniciAdiLabel" cssClass="YoneticiGirisLabel" runat="server" Text="Kullanıcı Adı : "></asp:Label>
                <asp:TextBox ID="YoneticiGirisKullaniciAdiTextBox" cssClass="YoneticiGirisTextBox" runat="server"></asp:TextBox>
                </div>
                <div class="Sifre">
                <asp:Label ID="YoneticiGirisSifreLabel" cssClass="YoneticiGirisLabel" runat="server" Text="Parola : "></asp:Label>
                <asp:TextBox ID="YoneticiGirisSifreTextBox" cssClass="YoneticiGirisTextBox" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div class="GirisB">
                <asp:Button ID="YoneticiGirisButton" cssClass="YoneticiGirisButton" runat="server" Text="Giriş Yap" OnClick="YoneticiGirisButton_Click" />
                </div>
                <div class="GirisSonuc">
                    <asp:Label ID="YoneticiGirisSonucLabel" runat="server" Text=""></asp:Label>
                </div>
            </asp:Panel>
            </div>
            <div class="HesapIslemleri">
                <asp:Panel ID="HesapIslemleriPanel" runat="server">
                    <div class="HesapIslemleriBaslik">
                        <asp:Label ID="HesapIslemleriBaslikLabel" cssClass="HesapIslemleriBaslikLabel" runat="server" Text="Şifre Değiştir"></asp:Label>
                    </div>
                <div class="HesapIslemleriEskiSifre">
                    <asp:Label ID="HesapIslemleriEskiSifreLabel" cssClass="HesapIslemleriEskiSifreLabel" runat="server" Text="Eski Şifre : "></asp:Label>
                    <asp:TextBox ID="HesapIslemleriEskiSifreTextBox" cssClass="HesapIslemleriEskiSifreTextBox" TextMode="Password" runat="server" MaxLength="25"></asp:TextBox>
                    <asp:CompareValidator ID="HesapIslemleriSifreValidator" CssClass="HesapIslemleriSifreValidator" runat="server" ControlToValidate="HesapIslemleriYeniSifreTekrarTextBox" ControlToCompare="HesapIslemleriYeniSifreTextBox" validationgroup="HesapIslemleriSifre" ErrorMessage="Girilen şifreler uyuşmuyor!"></asp:CompareValidator>
                </div>
                <div class="HesapIslemleriSifre">
                    <asp:Label ID="HesapIslemleriYeniSifreLabel" cssClass="HesapIslemleriYeniSifreLabel" runat="server" Text="Yeni Şifre : "></asp:Label>
                    <asp:TextBox ID="HesapIslemleriYeniSifreTextBox" cssClass="HesapIslemleriYeniSifreTextBox"  TextMode="Password" runat="server" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="HesapIslemleriSifreBosValidator" CssClass="HesapIslemleriSifreBosValidator" runat="server" ControlToValidate="HesapIslemleriYeniSifreTextBox" validationgroup="HesapIslemleriSifre" ErrorMessage="Bu alan boş olamaz!"></asp:RequiredFieldValidator>
                </div>
                <div class="HesapIslemleriSifreTekrar">
                    <asp:Label ID="HesapIslemleriYeniSifreTekrarLabel" cssClass="HesapIslemleriYeniSifreTekrarLabel" runat="server" Text="Yeni Şifre Tekrar : "></asp:Label>
                    <asp:TextBox ID="HesapIslemleriYeniSifreTekrarTextBox" cssClass="HesapIslemleriYeniSifreTekrarTextBox" TextMode="Password" runat="server" MaxLength="25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="HesapIslemleriSifreBosValidator2" CssClass="HesapIslemleriSifreBosValidator2" runat="server" ControlToValidate="HesapIslemleriYeniSifreTekrarTextBox" validationgroup="HesapIslemleriSifre" ErrorMessage="Bu alan boş olamaz!"></asp:RequiredFieldValidator>
                </div>
                <div class="HesapIslemleriGirisButon">
                <asp:Button ID="HesapIslemleriGirisButton" cssClass="HesapIslemleriGirisButton" validationgroup="HesapIslemleriSifre" runat="server" Text="Şifre Değiştir" OnClick="HesapIslemleriGirisButton_Click" />
                </div>
                <div class="HesapIslemleriGirisSonuc">
                    <asp:Label ID="HesapIslemleriGirisSonucLabel" CssClass="HesapIslemleriGirisSonucLabel" runat="server" Text=""></asp:Label>
                </div>
                </asp:Panel>
            </div>
            <div class="KayitEkle">
            <asp:Panel ID="KayitEklePaneli" runat="server">
                <div class="KayitEkleBaslik">
                    <asp:Label ID="KayitEkleBaslikLabel" cssClass="KayitEkleBaslikLabel" runat="server" Text="Kayit Ekle"></asp:Label>
                </div>
                <div class="KayitEkleAd">
                    <asp:Label ID="KayitEkleAdLabel" cssClass="KayitEkleLabel" runat="server" Text="*Ad : "></asp:Label>
                    <asp:TextBox ID="KayitEkleAdTextBox" cssClass="KayitEkleTextBox" runat="server" ControlToValidate="KayitEkleAdTextBox" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="KayitEkleAdValidator" CssClass="KayitEkleAdValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alanı doldurun!" ControlToValidate="KayitEkleAdTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="KayitEkleSoyad">
                    <asp:Label ID="KayitEkleSoyadLabel" cssClass="KayitEkleLabel" runat="server" Text="*Soyad : "></asp:Label>
                    <asp:TextBox ID="KayitEkleSoyadTextBox" cssClass="KayitEkleTextBox" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="KayitEkleSoyadValidator" CssClass="KayitEkleSoyadValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alanı doldurun!" ControlToValidate="KayitEkleSoyadTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="KayitEkleDepartmanSecim">
                    <asp:Label ID="KayitEkleDepartmanSecimiLabel" cssClass="KayitEkleLabel" runat="server" Text="*Departman : "></asp:Label>
                    <asp:DropDownList ID="KayitEkleDepartmanSecimDropDownList" cssClass="KayitEkleDepartmanSecimDropDownList" runat="server" DataSourceID="SqlDataSource5" DataTextField="Ad" DataValueField="id" AppendDataBoundItems="true">
                     <asp:ListItem Enabled="true">Lütfen Bir Seçenek Seçiniz...</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [Ad], [id] FROM [Departmanlar]"></asp:SqlDataSource>
                    <asp:Label ID="KayitEkleDepartmanSecimHataLabel" CssClass="KayitEkleDepartmanSecimHataLabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="KayitEkleAciklama">
                    <asp:Label ID="KayitEkleAciklamaLabel" cssClass="KayitEkleLabel" runat="server" Text="*Açıklama : "></asp:Label>
                    <asp:TextBox ID="KayitEkleAciklamaTextBox" cssClass="KayitEkleTextBox" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="KayitEkleAciklamaValidator" CssClass="KayitEkleAciklamaValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alanı doldurun!" ControlToValidate="KayitEkleAciklamaTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="KayitEkleFotograf">
                    <asp:Label ID="KayitEkleFotografLabel" cssClass="KayitEkleLabel" runat="server" Text="Fotoğraf : "></asp:Label>
                    <asp:FileUpload ID="KayitEkleFotografFileUpload"  cssClass="KayitEkleFileUpload" runat="server" />
                    <asp:CompareValidator ID="KayitEkleIsTelSayiValidator" CssClass="KayitEkleIsTelSayiValidator" validationgroup="KayitEkle" 
                        runat="server" ErrorMessage="Lütfen İş Tel alanına sayı girin!" ControlToValidate="KayitEkleIsTelTextBox" 
                        Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </div>
                <div class="KayitEkleIsTel">
                    <asp:Label ID="KayitEkleIsTelLabel" cssClass="KayitEkleLabel" runat="server" Text="*İş Tel : "></asp:Label>
                    <asp:TextBox ID="KayitEkleIsTelTextBox" cssClass="KayitEkleTextBox" runat="server" MaxLength="11"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="KayitEkleIsTelValidator" CssClass="KayitEkleIsTelValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alanı doldurun!" ControlToValidate="KayitEkleIsTelTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="KayitEkleIsTel2">
                    <asp:Label ID="KayitEkleIsTel2Label" cssClass="KayitEkleLabel" runat="server" Text="İş Tel 2 : "></asp:Label>
                    <asp:TextBox ID="KayitEkleIsTel2TextBox" cssClass="KayitEkleTextBox" runat="server" MaxLength="11"></asp:TextBox>
                    <asp:CompareValidator ID="KayitEkleIsTel2SayiValidator" CssClass="KayitEkleIsTel2SayiValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alana sayı girin!" ControlToValidate="KayitEkleIsTel2TextBox" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    
                </div>
                <div class="KayitEkleEvTel">
                    <asp:Label ID="KayitEkleEvTelLabel" cssClass="KayitEkleLabel" runat="server" Text="Ev Tel : "></asp:Label>
                    <asp:TextBox ID="KayitEkleEvTelTextBox" cssClass="KayitEkleTextBox" runat="server" MaxLength="11"></asp:TextBox>
                    <asp:CompareValidator ID="KayitEkleEvTelSayiValidator" CssClass="KayitEkleEvTelSayiValidator" validationgroup="KayitEkle" runat="server" ErrorMessage="Lütfen bu alana sayı girin!" ControlToValidate="KayitEkleEvTelTextBox" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </div>
                <div class="KayitEkleOncelikSecim">
                    <asp:Label ID="KayitEkleOncelikSecimiLabel" cssClass="KayitEkleLabel" runat="server" Text="*Öncelik : "></asp:Label>
                    <asp:DropDownList ID="KayitEkleOncelikSecimDropDownList" cssClass="KayitEkleOncelikSecimDropDownList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource8" DataTextField="Ad" DataValueField="id">
                        <asp:ListItem Enabled="true">Lütfen Bir Seçenek Seçiniz...</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Pozisyonlar] ORDER BY [id]"></asp:SqlDataSource>
                    <asp:Label ID="KayitEkleOncelikSecimHataLabel" CssClass="KayitEkleOncelikSecimHataLabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="KayitEkleButonu">
                <asp:Button ID="KayitEkleButton" cssClass="KayitEkleButton" validationgroup="KayitEkle" runat="server" Text="Kayıt Ekle" OnClick="KayitEkleButton_Click"/>
                </div>
                <div class="KayitEkleNot">
                    <asp:Label ID="KayitEkleNotLabel" CssClass="KayitEkleNotLabel" runat="server" Text="Not: Başında * olan alanların doldurulması zorunludur!"></asp:Label>
                </div>
                <div class="KayitEkleSonuc">
                    <asp:Label ID="KayitEkleSonucLabel" CssClass="KayitEkleSonucLabel" runat="server" Text=""></asp:Label>
                </div>
            </asp:Panel>
            </div>
            <div class="KayitDuzenle">
                    <asp:Panel ID="KayitDuzenlePaneli" runat="server">
                    <div class="KayitDuzenleBaslik">
                        <asp:Label ID="KayitDuzenleBaslikLabel" CssClass="KayitDuzenleBaslikLabel" runat="server" Text="Kayit Düzenle"></asp:Label>
                    </div>
                    <div class="KayitDuzenleSearch">
                        <asp:TextBox ID = "KayitDuzenleTextBox" cssClass="KayitDuzenleTextBox" runat="server" placeholder="Aramak İstediğiniz bilgiyi giriniz"/>
                        <asp:Button ID = "KayitDuzenleButton" cssClass="KayitDuzenleButton" runat="server" OnClick="KayitDuzenleButton_Click" />
                    </div>
                    <div class="KayitDuzenleAramaSonucu">
                        <asp:Label ID="KayitDuzenleAramaSonucuLabel" cssClass="KayitDuzenleAramaSonucuLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="KayitDuzenleTablo">
                        <asp:GridView ID="KayitDuzenleTablosu" cssClass="KayitDuzenleTablosu" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" BackColor="#507CD1" DataSourceID="SqlDataSource6" ForeColor="#333333" GridLines="None" OnRowDeleted="KayitDuzenleSil_Click" OnRowEditing="KayitDuzenleDuzenle_Click" OnRowUpdated="KayitDuzenleGuncellestir_Click" OnRowCancelingEdit="KayitDuzenleIptal_Click" HorizontalAlign="Center" Width="684px" DataKeyNames="id">
                        <AlternatingRowStyle BackColor="White" Width="684px" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="~\KisiResimleri\{0}" ControlStyle-Height="85px" ControlStyle-Width="63.5" HeaderText="Fotoğraf" SortExpression="Resim" >
<ControlStyle Height="85px" Width="63.5px"></ControlStyle>
                        </asp:ImageField>
                            <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" SortExpression="Aciklama" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IsTel" HeaderText="İş Tel" SortExpression="IsTel" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IsTel2" HeaderText="İş Tel 2" SortExpression="IsTel2" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EvTel" HeaderText="Ev Tel" SortExpression="EvTel" >
                                <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Departman No" SortExpression="DepartmanID"  ControlStyle-Width="100%">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="KayitDuzenleDepartmanDropDownList" runat="server" DataSourceID="SqlDataSource9" SelectedValue = '<% # Bind ("DepartmanID")%>' DataTextField="Ad" DataValueField="id" Width="100%"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Departmanlar] ORDER BY [Ad]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmanID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pozisyon No" SortExpression="Oncelik"  ControlStyle-Width="100%">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="KayitDuzenleOncelikDropDownList" runat="server" DataSourceID="SqlDataSource10" SelectedValue = '<% # Bind ("Oncelik")%>' DataTextField="Ad" DataValueField="id" Width="100%"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Pozisyonlar] ORDER BY [id]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Oncelik") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad], [Soyad], [Aciklama], [IsTel], [IsTel2], [DepartmanID], [EvTel], [Oncelik], [Resim] FROM [Kayitlar] WHERE (([Ad] LIKE '%' + @Ad + '%') OR ([Soyad] LIKE '%' + @Soyad + '%') OR ([Aciklama] LIKE '%' + @Aciklama + '%') OR ([IsTel] LIKE '%' + @IsTel + '%') OR ([IsTel2] LIKE '%' + @IsTel2 + '%') OR ([EvTel] LIKE '%' + @EvTel + '%'))" DeleteCommand="DELETE FROM [Kayitlar] WHERE [id] = @id" InsertCommand="INSERT INTO [Kayitlar] ([Ad], [Soyad], [Aciklama], [IsTel], [IsTel2], [DepartmanID], [EvTel], [Oncelik], [Resim]) VALUES (@Ad, @Soyad, @Aciklama, @IsTel, @IsTel2, @DepartmanID, @EvTel, @Oncelik, @Resim)" UpdateCommand="UPDATE [Kayitlar] SET [Ad] = @Ad, [Soyad] = @Soyad, [Aciklama] = @Aciklama, [IsTel] = @IsTel, [IsTel2] = @IsTel2, [DepartmanID] = @DepartmanID, [EvTel] = @EvTel, [Oncelik] = @Oncelik, [Resim] = @Resim WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Ad" Type="String" />
                                <asp:Parameter Name="Soyad" Type="String" />
                                <asp:Parameter Name="Aciklama" Type="String" />
                                <asp:Parameter Name="IsTel" Type="String" />
                                <asp:Parameter Name="IsTel2" Type="String" />
                                <asp:Parameter Name="DepartmanID" Type="Int32" />
                                <asp:Parameter Name="EvTel" Type="String" />
                                <asp:Parameter Name="Oncelik" Type="Int32" />
                                <asp:Parameter Name="Resim" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="Ad" Type="String" />
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="Soyad" Type="String" />
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="Aciklama" Type="String" />
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="IsTel" Type="String" />
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="IsTel2" Type="String" />
                                <asp:FormParameter FormField="KayitDuzenleTextBox" Name="EvTel" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Ad" Type="String" />
                                <asp:Parameter Name="Soyad" Type="String" />
                                <asp:Parameter Name="Aciklama" Type="String" />
                                <asp:Parameter Name="IsTel" Type="String" />
                                <asp:Parameter Name="IsTel2" Type="String" />
                                <asp:Parameter Name="DepartmanID" Type="Int32" />
                                <asp:Parameter Name="EvTel" Type="String" />
                                <asp:Parameter Name="Oncelik" Type="Int32" />
                                <asp:Parameter Name="Resim" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                    </asp:SqlDataSource>
                    </div>
                    <div class="KayitDuzenleBilgi">
                        <asp:Label ID="KayitDuzenleBilgiLabel" cssClass="KayitDuzenleBilgiLabel" runat="server" Text="Bilgi: Yukarıdaki Liste Organizasyon Şemasına Göre Düzenlenmiştir."></asp:Label>
                    </div>
                </asp:Panel>
            </div>
            <div class="DepartmanEkle">
                <asp:Panel ID="DepartmanEklePaneli" runat="server">
                    <div class="DepartmanEkleBaslik">
                        <asp:Label ID="DepartmanEkleBaslikLabel" cssClass="DepartmanEkleBaslikLabel" runat="server" Text="Departman Ekle"></asp:Label>
                    </div>
                    <div class="DepartmanEkleAd">
                        <asp:Label ID="DepartmanEkleAdLabel" cssClass="DepartmanEkleLabel" runat="server" Text="Ad : "></asp:Label>
                        <asp:TextBox ID="DepartmanEkleAdTextBox" cssClass="DepartmanEkleTextBox" runat="server" ControlToValidate="KayitEkleAdTextBox" MaxLength="45"></asp:TextBox>
                    </div>
                    <div class="DepartmanEkleButonu">
                        <asp:Button ID="DepartmanEkleButton" cssClass="DepartmanEkleButton" validationgroup="KayitEkle" runat="server" Text="Departman Ekle" OnClick="DepartmanEkleButton_Click"/>
                    </div>
                    <div class="DepartmanEkleSonuc">
                        <asp:Label ID="DepartmanEkleSonucLabel" runat="server" Text=""></asp:Label>
                    </div>
                </asp:Panel>
            </div>
            <div class="DepartmanDuzenle">
                <asp:Panel ID="DepartmanDuzenlePaneli" runat="server">
                    <div class="DepartmanDuzenleBaslik">
                        <asp:Label ID="DepartmanDuzenleBaslikLabel" CssClass="DepartmanDuzenleBaslikLabel" runat="server" Text="Departman Düzenle"></asp:Label>
                    </div>
                    <asp:Panel ID="DepartmanDuzenleHataPanel" runat="server">
                        <div class="DepartmanDuzenleHata">
                            <asp:Label ID="DepartmanDuzenleHataLabel" CssClass="DepartmanDuzenleHataLabel" runat="server" Text=""></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="DepartmanDuzenleTablo">
                        <asp:GridView ID="DepartmanDuzenleTablosu" cssClass="DepartmanDuzenleTablosu" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" BackColor="#507CD1" DataSourceID="SqlDataSource7" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="684px" DataKeyNames="id" OnRowCancelingEdit="DepartmanDuzenleIptal_Click" OnRowDeleted="DepartmanDuzenleSil_Click" OnRowEditing="DepartmanDuzenleDuzenle_Click" OnRowUpdated="DepartmanDuzenleGuncellestir_Click">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" InsertText="Güncelleştir" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:TemplateField HeaderText="Ad" SortExpression="Ad">
                                <EditItemTemplate>
                                    <asp:TextBox ID="DepartmanDuzenleTablosuAdTextBox" CssClass="DepartmanDuzenleTablosuAdTextBox" Width="100%" runat="server" Text='<%# Bind("Ad") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ad") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" Width="250" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [Ad], [id] FROM [Departmanlar] ORDER BY [Ad]" DeleteCommand="DELETE FROM [Departmanlar] WHERE [id] = @id" InsertCommand="INSERT INTO [Departmanlar] ([Ad]) VALUES (@Ad)" UpdateCommand="UPDATE [Departmanlar] SET [Ad] = @Ad WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </div>
                </asp:Panel>
            </div>
            <div class="DepartmanaGoreDuzenle">
                <asp:Panel ID="DepartmanaGoreDuzenlePaneli" runat="server">
                    <div class="DepartmanaGoreDuzenleBaslik">
                        <asp:Label ID="DepartmanaGoreDuzenleBaslikLabel" CssClass="DepartmanaGoreDuzenleBaslikLabel" runat="server" Text="Departmana Göre Düzenle"></asp:Label>
                    </div>
                    <div class="DepartmanaGoreDuzenleListBox">
                        <asp:ListBox ID="DepartmanaGoreDuzenleDepartmanListBox" CssClass="DepartmanaGoreDuzenleDepartmanListBox" runat="server" DataSourceID="SqlDataSource13" DataTextField="Ad" DataValueField="id" AutoPostBack="true" OnSelectedIndexChanged="DepartmanaGoreDuzenleDepartmanListBox_Selected"></asp:ListBox>
                        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Departmanlar] ORDER BY [Ad]"></asp:SqlDataSource>
                    </div>
                    <div class="DepartmanaGoreDuzenleBaslik2">
                        <asp:Label ID="DepartmanaGoreDuzenleBaslikLabel2" CssClass="DepartmanaGoreDuzenleBaslikLabel2" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="DepartmanaGoreDuzenleTablo">
                        <asp:GridView ID="DepartmanaGoreDuzenleTablosu" CssClass="DepartmanaGoreDuzenleTablosu" runat="server" CellPadding="4" CellSpacing="2" BackColor="#507CD1" HorizontalAlign="Center" Width="684px" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource14" OnRowCancelingEdit="DepartmanaGoreDuzenleIptal_Click" OnRowDeleted="DepartmanaGoreDuzenleSil_Click" OnRowEditing="DepartmanaGoreDuzenleDuzenle_Click" OnRowUpdated="DepartmanaGoreDuzenleGuncellestir_Click">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad"  ControlStyle-Width="100%">
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Aciklama" HeaderText="Açıklama" SortExpression="Aciklama" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IsTel" HeaderText="İş Tel" SortExpression="IsTel" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IsTel2" HeaderText="İş Tel 2" SortExpression="IsTel2" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EvTel" HeaderText="Ev Tel" SortExpression="EvTel" ControlStyle-Width="100%" >
                            <ControlStyle Width="100%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Departman" SortExpression="DepartmanID">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DepartmanaGoreDuzenleDepartmanDropDownList" runat="server" DataSourceID="SqlDataSource15" SelectedValue = '<% # Bind ("DepartmanID")%>' DataTextField="Ad" DataValueField="id"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Departmanlar] ORDER BY [Ad]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmanID") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="100%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pozisyon" SortExpression="Oncelik">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DepartmanaGoreDuzenleOncelikDropDownList" SelectedValue = '<% # Bind ("Oncelik")%>' runat="server" DataSourceID="SqlDataSource16" DataTextField="Ad" DataValueField="id"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Pozisyonlar] ORDER BY [id]"></asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Oncelik") %>'></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="100%" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" DeleteCommand="DELETE FROM [Kayitlar] WHERE [id] = @id" InsertCommand="INSERT INTO [Kayitlar] ([Ad], [Soyad], [IsTel], [Aciklama], [IsTel2], [EvTel], [DepartmanID], [Oncelik], [Resim]) VALUES (@Ad, @Soyad, @IsTel, @Aciklama, @IsTel2, @EvTel, @DepartmanID, @Oncelik, @Resim)" SelectCommand="SELECT [id], [Ad], [Soyad], [IsTel], [Aciklama], [IsTel2], [EvTel], [DepartmanID], [Oncelik], [Resim] FROM [Kayitlar] WHERE ([DepartmanID] = @DepartmanID) ORDER BY [Oncelik], [Ad], [Soyad]" UpdateCommand="UPDATE [Kayitlar] SET [Ad] = @Ad, [Soyad] = @Soyad, [IsTel] = @IsTel, [Aciklama] = @Aciklama, [IsTel2] = @IsTel2, [EvTel] = @EvTel, [DepartmanID] = @DepartmanID, [Oncelik] = @Oncelik, [Resim] = @Resim WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                            <asp:Parameter Name="Soyad" Type="String" />
                            <asp:Parameter Name="IsTel" Type="String" />
                            <asp:Parameter Name="Aciklama" Type="String" />
                            <asp:Parameter Name="IsTel2" Type="String" />
                            <asp:Parameter Name="EvTel" Type="String" />
                            <asp:Parameter Name="DepartmanID" Type="Int32" />
                            <asp:Parameter Name="Oncelik" Type="Int32" />
                            <asp:Parameter Name="Resim" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:FormParameter FormField="DepartmanaGoreDuzenleDepartmanListBox" Name="DepartmanID" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                            <asp:Parameter Name="Soyad" Type="String" />
                            <asp:Parameter Name="IsTel" Type="String" />
                            <asp:Parameter Name="Aciklama" Type="String" />
                            <asp:Parameter Name="IsTel2" Type="String" />
                            <asp:Parameter Name="EvTel" Type="String" />
                            <asp:Parameter Name="DepartmanID" Type="Int32" />
                            <asp:Parameter Name="Oncelik" Type="Int32" />
                            <asp:Parameter Name="Resim" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </div>
                </asp:Panel>
            </div>
            <div class="DisaAktar">
                <asp:Panel ID="DisaAktarPaneli" runat="server">
                    <div class="DisaAktarBaslik">
                        <asp:Label ID="DisaAktarBaslikLabel" CssClass="DisaAktarBaslikLabel" runat="server" Text="Kayıtları Excel'e Aktar"></asp:Label>
                    </div>
                    <div class="DisaAktarButonu">
                        <asp:Button ID="DisaAktarButton" cssClass="DisaAktarButton" validationgroup="KayitEkle" runat="server" Text="Dışa Aktar" OnClick="DisaAktarButton_Click"/>
                    </div>
                    <div class="DisaAktarTablosu">
                        <asp:GridView ID="DisaAktarGridView" CssClass="DisaAktarGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="2" BackColor="#507CD1" HorizontalAlign="Center" Width="684px" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource17" Visible="True" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                                <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                                <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                                <asp:BoundField DataField="IsTel" HeaderText="İş Tel" SortExpression="IsTel" />
                                <asp:BoundField DataField="IsTel2" HeaderText="İş Tel 2" SortExpression="IsTel2" />
                                <asp:BoundField DataField="EvTel" HeaderText="Ev Tel" SortExpression="EvTel" />
                                <asp:BoundField DataField="Ad1" HeaderText="Departman" SortExpression="Ad1" />
                                <asp:BoundField DataField="Ad2" HeaderText="Pozisyon" SortExpression="Ad2" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT k.Ad, k.Soyad, k.Aciklama, k.IsTel, k.IsTel2, k.EvTel, d.Ad, p.Ad FROM Kayitlar k,Departmanlar d,Pozisyonlar p WHERE k.DepartmanID = d.id AND k.Oncelik = p.id ORDER BY k.Ad, k.Soyad, k.Oncelik"></asp:SqlDataSource>
                    </div>
                </asp:Panel>
            </div>
            <asp:Panel ID="NotPaneli" runat="server">
            <div class="Not">Not: Bulunduğunuz bölgeden başka bir bölgedeki dahili numarayı aramak için dahili numaradan önce aşağıdaki tabloya göre o bölgenin kısa kodunu  çeviriniz.</div>
            </asp:Panel>
            <div class="BolgelerTablo">
                <asp:GridView ID="BolgelerTablosu" cssClass="BolgelerTablosu" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="KisaKod" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Bölge" HeaderText="Bölge" SortExpression="Bölge" />
                        <asp:BoundField DataField="KisaKod" HeaderText="Kısa Kod" InsertVisible="False" ReadOnly="True" SortExpression="KisaKod" />
                        <asp:BoundField DataField="Santral" HeaderText="Santral" SortExpression="Santral" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [KisaKod], [Bölge], [Santral] FROM [Bolgeler]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="Departmanlar">
            <div class="DepartmanlarListBoxDiv">
                <asp:ListBox ID="DepartmanlarListBox" cssClass="DepartmanlarListBox" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ad" DataValueField="id" OnSelectedIndexChanged="DepartmanlarListBox_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HemaEndustriFihristDatabaseConnectionString %>" SelectCommand="SELECT [id], [Ad] FROM [Departmanlar] ORDER BY [Ad]"></asp:SqlDataSource>
            </div>
            <div class="SagBaslik2">
                Ziyaretçi İstatistikleri
            </div>
            <div class="Sag2">
                <div class="SagAlt2">
                    <asp:Label ID="ToplamZiyaretciLabel" CssClass="ToplamZiyaretciLabel" runat="server" Text=""></asp:Label>
                </div>
                <div class="SagAlt1">
                    <asp:Label ID="OnlineZiyaretciLabel" CssClass="OnlineZiyaretciLabel" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
        <footer>
            <div class="Telif">
               Copyright ©  2017 Hema Endüstri Dahili Fihrist, tüm hakları saklıdır.
            </div>
        </footer>
    </div>
    </form>
</body>
</html>