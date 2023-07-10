<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="MÜŞTERİ_ADI_erp_v1_0.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=IBM+Plex+Mono:400,700&display=swap" />
    <style>
        /* Özelleştirilebilir görsel stiller buraya gelecek */
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
            <!-- Logo -->
            <a class="navbar-brand" href="#">
                <img src="https://i.hizliresim.com/c59h21g.png" alt="Logo" height="35" />
            </a>

            <!-- Hamburger Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-center">
                    <!-- Bildirimler -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownNotifications" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-bell"></i>
                            <span class="badge rounded-pill bg-danger">3</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownNotifications">
                            <li><a class="dropdown-item" href="#">Notification 1</a></li>
                            <li><a class="dropdown-item" href="#">Notification 2</a></li>
                            <li><a class="dropdown-item" href="#">Notification 3</a></li>
                        </ul>
                    </li>

                    <!-- Profil -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownProfile" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user"></i>
                            <span class="ms-2">Admin</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownProfile">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><hr class="dropdown-divider" /></li>
                            <li><a class="dropdown-item" href="#">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- NavBar Endpoint-->

    <div class="bg-light">
        <div class="container">
            <ul class="nav nav-tabs mt-3 overflow-x border-0">
                <li class="nav-item">
                    <a href="#" class="nav-link active">Anasayfa</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Sistem</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Kayıt</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Satış</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Proje/Mühendislik</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Satın Alma</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Üretim</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link font-regular">Depo Yönetim</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Main -->
    <div class="container mt-3">
        <div class="row">
            <!-- Alert Panel -->
            <div class="mbg-3 alert alert-info alert-dismissible fade show" role="alert">
                <span class="pr-2">
                    <i class="fa fa-question-circle"></i>
                </span>
                Tarih: GG/AA/YYYY <!-- Son halinde bu şekilde çalışacaktır. <asp:Label ID="lbl_tarih_today" runat="server" Text="Tarih"></asp:Label> -->
            </div>

            <!-- Döviz panel -->
            <div class="col-lg-3">
                <div class="card bg-akce-enerji border-0">
                    <div class="card-body">
                        <h6 class="card-title">Döviz Kurları</h6>
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between">
                                <span class="currency">USD</span>
                                <span class="value">$<asp:Label ID="lbl_usd" runat="server" Text="0"></asp:Label></span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span class="currency">EUR</span>
                                <span class="value">€<asp:Label ID="lbl_eur" runat="server" Text="0"></asp:Label></span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span class="currency">GBP</span>
                                <span class="value">£<asp:Label ID="lbl_gbp" runat="server" Text="0"></asp:Label></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Card List -->
            <div class="col-lg-9 mt-3">
                <div class="card-list">
                  <div class="row">
                    <div class="col-6 col-md-6 col-lg-6 col-xl-6 mb-2">
                      <div class="card blue bg-light border-0">
                        <div class="title" style="padding-left: 10px;"><b>Sipariş</b></div>
                        <i class="zmdi zmdi-upload"></i>
                        <div class="value" style="padding-left: 10px;">89</div>
                        <div class="stat" style="padding-left: 10px;"><b>13</b> Yeni Sipariş</div>
                      </div>
                    </div>
                    <div class="col-6 col-md-6 col-lg-6 col-xl-6 mb-2">
                        <div class="card blue bg-light border-0">
                          <div class="title" style="padding-left: 10px;"><b>Müşteri</b></div>
                          <i class="zmdi zmdi-upload"></i>
                          <div class="value" style="padding-left: 10px;">8900</div>
                          <div class="stat" style="padding-left: 10px;"><b>120</b> Yeni Müşteri</div>
                        </div>
                      </div>
                      <div class="col-6 col-md-6 col-lg-6 col-xl-6 mb-2">
                        <div class="card blue bg-light border-0">
                          <div class="title" style="padding-left: 10px;"><b>Aktif Müşteri</b></div>
                          <i class="zmdi zmdi-upload"></i>
                          <div class="value" style="padding-left: 10px;">1509</div>
                          <div class="stat" style="padding-left: 10px;"><b>17</b> Yeni aktif müşteri</div>
                        </div>
                      </div>
                      <div class="col-6 col-md-6 col-lg-6 col-xl-6 mb-2">
                        <div class="card blue bg-light border-0">
                          <div class="title" style="padding-left: 10px;"><b>Mesaj</b></div>
                          <i class="zmdi zmdi-upload"></i>
                          <div class="value" style="padding-left: 10px;">34</div>
                          <div class="stat" style="padding-left: 10px;"><b>11</b> Okunmamış Yeni Mesaj</div>
                        </div>
                      </div>
                    <!-- ... other cards ... -->
                  </div>
                </div>
              </div>
            </div>
          </div>


    <!--<div class="col-lg-9 mt-3">
    <div class="card-list">
        <div class="row">
            <%-- Kullanıcı bazlı veriler burada webmethod kullanılarak çağırılabilir ve dönen verilerin kullanımı sağlanabilir --%>
            <% List<OrderData> orderDataList = GetOrderDataFromDatabase(); %>

            <%-- Veri döngüsüyle kartlar burada --%>
            <% foreach (OrderData orderData in orderDataList) { %>
                <div class="col-6 col-md-3 col-lg-3 col-xl-3 mb-2">
                    <div class="card blue bg-light border-0">
                        <div class="title">Orders</div>
                        <i class="zmdi zmdi-upload"></i>
                        <div class="value"><%= orderData.TotalOrders %></div> <!-- Gelen siparişlerin görüntülenmesi için orderData sınıfının bulunması gerekmektedir, ya da uygun bir sınıf ile değiştirilebilir--!>
                        <div class="stat"><b><%= orderData.NewOrders %></b> New Orders</div>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
</div>-->


    <!--Data Charts-->                           <!-- Webforms karşılıklarına göre bu bölge düzenlenecek. -->
<div class="container mt-3">
    <div class="row">
        <div class="col-lg-6 mt-3">
            <div class="card bg-light">
                <div class="card-header bg-warning d-flex justify-content-between">
                    <h5 class="card-title mb-0">Satış Raporları</h5>
                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                      <input type="radio" class="btn-check" name="btnradio1" id="btnradio1" autocomplete="off" checked>
                      <label class="btn btn-outline-secondary" for="btnradio1">Günlük</label>

                      <input type="radio" class="btn-check" name="btnradio1" id="btnradio2" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio2">Haftalık</label>

                      <input type="radio" class="btn-check" name="btnradio1" id="btnradio3" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio3">Aylık</label>

                      <input type="radio" class="btn-check" name="btnradio1" id="btnradio4" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio4">Yıllık</label>
                    </div>
                </div>
                <div class="card-body">
                    <canvas id="smallChart1"></canvas>
                </div>
            </div>
        </div>
        <div class="col-lg-6 mt-3">
            <div class="card bg-light">
                <div class="card-header bg-warning d-flex justify-content-between">
                    <h5 class="card-title mb-0">İhracat Raporları</h5>
                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                      <input type="radio" class="btn-check" name="btnradio2" id="btnradio5" autocomplete="off" checked>
                      <label class="btn btn-outline-secondary" for="btnradio5">Günlük</label>

                      <input type="radio" class="btn-check" name="btnradio2" id="btnradio6" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio6">Haftalık</label>

                      <input type="radio" class="btn-check" name="btnradio2" id="btnradio7" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio7">Aylık</label>

                      <input type="radio" class="btn-check" name="btnradio2" id="btnradio8" autocomplete="off">
                      <label class="btn btn-outline-secondary" for="btnradio8">Yıllık</label>
                    </div>
                </div>
                <div class="card-body">
                    <canvas id="smallChart2"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="doviz.js"></script>
    <script>
        // Örnek veriler burada oluşturulacak
        const labels = ["January", "February", "March", "April", "May", "June", "July", "August"];
        const data = {
            labels: labels,
            datasets: [{
                label: 'Sample Data',
                data: [12, 19, 3, 5, 2, 3, 10, 20],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        };

        // Chart burada oluşturulacak
        const smallChart1Ctx = document.getElementById('smallChart1').getContext('2d');
        const smallChart2Ctx = document.getElementById('smallChart2').getContext('2d');

        new Chart(smallChart1Ctx, { type: 'bar', data: data, options: {} });
        new Chart(smallChart2Ctx, { type: 'line', data: data, options: {} });
    </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="scripts" runat="server">
    <script>
        // Ekstra Scriptler buraya gelebilir
    </script>
</asp:Content>
