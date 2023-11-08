<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_STATIC_URL}{NV_ASSETS_DIR}/js/chart/chart.min.js"></script>
   <div style="width: 80%; margin: 0 auto; height:auto;">
        <!-- Dropdown để chọn năm -->
        <label for="yearSelect">Chọn năm: </label>
        <select id="yearSelect">
            <option value="2022">2022</option>
            <option value="2023">2023</option>
            <!-- Thêm các năm khác nếu cần -->
        </select>
        <canvas id="myChart" style="botton:60px"></canvas>
    </div>

    <script>
        var data = {
            "2022": [1, 2, 3, 4, 1, 2, 6, 2, 5, 4, 5, 5],
            "2023": [120, 160, 220, 260, 310, 370, 410, 460, 510, 560, 610, 660],
            // Thêm dữ liệu cho các năm khác nếu cần
        };

        var yearSelect = document.getElementById('yearSelect');
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart;

        // Hàm cập nhật biểu đồ khi người dùng thay đổi năm
        function updateChart() {
            var selectedYear = yearSelect.value;
            var chartData = data[selectedYear];

            if (myChart) {
                myChart.destroy(); // Hủy biểu đồ hiện tại
            }
            myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
                    datasets: [{
                        label: numberOfPost,
                        data: chartData,
                        fill: false,
                        borderColor: 'rgb(75, 192, 192)',
                        tension: 0.1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        }

        // Gọi hàm cập nhật ban đầu
        updateChart();

        // Lắng nghe sự kiện khi người dùng thay đổi năm
        yearSelect.addEventListener('change', updateChart);
    </script>
<!-- END: main -->