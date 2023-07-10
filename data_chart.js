// Verileri almak için web yöntemi burada çağrılacak ve dönen verilerin kullanımına imkan sağlayacak

function getData() {
  $.ajax({
    type: "POST",
    url: "Dashboard.aspx/KULLANILAN_SAYFA_BURADA_YER_ALACAK",
    data: JSON.stringify({ timeframe: "daily" }), // Zaman aralığını burada belirlenecek
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function (response) {
      // Verileri alındıktan sonra grafik oluşturmak burası kullanılacak
      createChart(response.d);
    },
    error: function (error) {
      console.log(error);
    },
  });
}

function createChart(data) {
  var labels = []; // Etiketler (x ekseni için)
  var values = []; // Değerler (y ekseni için)

  // Verileri döngüyle işleyin ve etiketler ve değerler dizilerine ekleyin
  for (var i = 0; i < data.length; i++) {
    labels.push(data[i].GELMESİ_GEREKEN_ETİKETLER_BURADA_YER_ALACAK);
    values.push(data[i].GELMESİ_GEREKEN_DEĞERLER_BURADA_YER_ALACAK);
  }

  // Grafik'te olmasını istediğiniz özellikleri buradan ekleyebilirsiniz
  var chartOptions = {
    responsive: true,
    maintainAspectRatio: false,
    scales: {
      y: {
        beginAtZero: true,
      },
    },
  };

  // Hangi canvas üzerinde oluşturulması isteniyor ise orası burada kullanılacak
  var ctx = document.getElementById("myChart").getContext("2d");

  // Grafik oluşturma işlemi burada gerçekleşecek, tasarım düzenlenebilir
  var myChart = new Chart(ctx, {
    type: "bar",
    data: {
      labels: labels,
      datasets: [
        {
          label: "Satış Miktarı",
          data: values,
          backgroundColor: "rgba(75, 192, 192, 0.2)",
          borderColor: "rgba(75, 192, 192, 1)",
          borderWidth: 1,
        },
      ],
    },
    options: chartOptions,
  });
}

// Sayfa yüklendiğinde verileri alacak ve grafik oluşturma işlemini sağlayacak
$(document).ready(function () {
  getData();
});
