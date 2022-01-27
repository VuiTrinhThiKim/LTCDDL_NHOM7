@extends('admin_layout_view')
@section('admin_content')
<div class="agile-last-grids">
	<div class="col-lg-12 agile-last-left agile-last-middle">
	<div class="agile-last-grid">
			<div class="area-grids-heading">
				<h3>Danh sách đơn hàng chờ xử lí</h3>
			</div>
			<div class="table-responsive">
		      <?php
		        $statusOrder_message = Session::get('messOrder');
		        if($statusOrder_message) {
		            echo '<span class="status_alert">'.$statusOrder_message.'</span>';
		            Session::put('messOrder', null);
		        }
		        $order_role = Session::get('order_role');
		        $ad_usename = Session::get('ad_usename');
		      ?>
		      <table class="table table-striped b-t b-light">
		        <thead>
		          <tr>
		            <th style="width:5%;">ID</th>
		            <th style="width:15%;">Tên khách hàng</th>
		            <th>Số điện thoại</th>
		            <th>Phương thức thanh toán</th>
		            <th>Tổng</th>
		            <th>Đã trả</th>
		            <th>Còn lại</th>
		            <th>Trạng thái đơn hàng</th>
		            <th style="width:2%;"></th>
		          </tr>
		        </thead>
		        <tbody>
		          @foreach($orders as $key => $order)
		          <tr>
		            <td>{{$order->order_id}}</td>
		            <td>{{$order->username}}</td>
		            <td>{{$order->customer_phone}}</td>
		            <td>{{$order->payment_method}}</td>
		            <td>{{$order->order_total}}</td>
		            <td>{{$order->order_paid}}</td>
		            <td>
		              {{$order->order_total - $order->order_paid}}
		            </td>
		            <td>{{$order->status_name}}</td>
		            <td>
		              <form action="{{URL::to('/admin/order/confirm/'.$order->order_id)}}" method="POST">
		                {{csrf_field()}}
		                <input type="hidden" value="{{$order->order_id}}" name="orderStatus">
		                <button class="btn btn-default btn-success" type="submit">Xác nhận</button>
		              </form>

		            </td>
		            <td>

		              <a href="{{URL::to('/admin/order/edit/'.$order->order_id)}}" class="edit-product" ui-toggle-class="">
		                <i class="fa fa-pencil-square-o text-edit"></i>
		              </a>
		              <a onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này?')" href="{{URL::to('/admin/order/delete/'.$order->order_id)}}" class="delete-product" ui-toggle-class="">
		                <i class="fa fa-times text-danger text"></i>
		              </a>

		            </td>
		          </tr>
		          @endforeach
		        </tbody>
		      </table>
		    </div>
		    <footer class="panel-footer">
		      <!--Pagination-->
		      {{ $orders->links('admin.pagination') }}
		    </footer>
		</div>
	</div>
</div><!-- tasks -->
<div class="agile-last-grids">
	<div class="col-md-4 agile-last-left">
		<div class="agile-last-grid">
			<div class="area-grids-heading">
				<h3>Tháng</h3>
			</div>
			<div id="graph7"></div>
			<script>
			// This crosses a DST boundary in the UK.
			Morris.Area({
			  element: 'graph7',
			  data: [
				{x: '2013-03-30 22:00:00', y: 3, z: 3},
				{x: '2013-03-31 00:00:00', y: 2, z: 0},
				{x: '2013-03-31 02:00:00', y: 0, z: 2},
				{x: '2013-03-31 04:00:00', y: 4, z: 4}
			  ],
			  xkey: 'x',
			  ykeys: ['y', 'z'],
			  labels: ['Y', 'Z']
			});
			</script>

		</div>
	</div>
	<div class="col-md-4 agile-last-left agile-last-middle">
		<div class="agile-last-grid">
			<div class="area-grids-heading">
				<h3>Ngày</h3>
			</div>
			<div id="graph8"></div>
			<script>
			/* data stolen from http://howmanyleft.co.uk/vehicle/jaguar_'e'_type */
			var day_data = [
			  {"period": "2016-10-01", "licensed": 3407, "sorned": 660},
			  {"period": "2016-09-30", "licensed": 3351, "sorned": 629},
			  {"period": "2016-09-29", "licensed": 3269, "sorned": 618},
			  {"period": "2016-09-20", "licensed": 3246, "sorned": 661},
			  {"period": "2016-09-19", "licensed": 3257, "sorned": 667},
			  {"period": "2016-09-18", "licensed": 3248, "sorned": 627},
			  {"period": "2016-09-17", "licensed": 3171, "sorned": 660},
			  {"period": "2016-09-16", "licensed": 3171, "sorned": 676},
			  {"period": "2016-09-15", "licensed": 3201, "sorned": 656},
			  {"period": "2016-09-10", "licensed": 3215, "sorned": 622}
			];
			Morris.Bar({
			  element: 'graph8',
			  data: day_data,
			  xkey: 'period',
			  ykeys: ['licensed', 'sorned'],
			  labels: ['Licensed', 'SORN'],
			  xLabelAngle: 60
			});
			</script>
		</div>
	</div>
	<div class="col-md-4 agile-last-left agile-last-right">
		<div class="agile-last-grid">
			<div class="area-grids-heading">
				<h3>Năm</h3>
			</div>
			<div id="graph9"></div>
			<script>
			var day_data = [
			  {"elapsed": "I", "value": 34},
			  {"elapsed": "II", "value": 24},
			  {"elapsed": "III", "value": 3},
			  {"elapsed": "IV", "value": 12},
			  {"elapsed": "V", "value": 13},
			  {"elapsed": "VI", "value": 22},
			  {"elapsed": "VII", "value": 5},
			  {"elapsed": "VIII", "value": 26},
			  {"elapsed": "IX", "value": 12},
			  {"elapsed": "X", "value": 19}
			];
			Morris.Line({
			  element: 'graph9',
			  data: day_data,
			  xkey: 'elapsed',
			  ykeys: ['value'],
			  labels: ['value'],
			  parseTime: false
			});
			</script>

		</div>
	</div>
	<div class="clearfix"> </div>
</div>
<!-- //tasks -->
<div class="agil-info-calendar">
	<!-- calendar -->
	<div class="col-md-6 agile-calendar">
		<div class="calendar-widget">
	        <div class="panel-heading ui-sortable-handle">
				<span class="panel-icon">
	              <i class="fa fa-calendar-o"></i>
	            </span>
	            <span class="panel-title"> Calendar Widget</span>
	        </div>
			<!-- grids -->
				<div class="agile-calendar-grid">
					<div class="page">

						<div class="w3l-calendar-left">
							<div class="calendar-heading">

							</div>
							<div class="monthly" id="mycalendar"></div>
						</div>

						<div class="clearfix"> </div>
					</div>
				</div>
		</div>
	</div>
</div>
<!-- //calendar -->
<style class="container-fluid">
            <style type="text/css">
                   p.title_thongke  {
                        text-align: center;
                        font-size: 20px;
                        font-weight: bold;
                   }
            </style>
<div class="row">
        <p class="title_thongke">Thống kê đơn hàng doanh số</p>

        <div autocomplete="off">
            @csrf
            <div class="col-md-2">
                <p>Từ ngày: <input type="date" id="datepicker" class="form-control"></p>
                <input type="button" id="btn-dashboard-filter" class="btn btn-primary btn-sm" value="Lọc kết quả">
            </div>
            <div class="col-md-2">
                <p>Đến ngày : <input type="date" id="datepicker2" class="form-control"></p>
            </div>

            <div class="col-md-2">
                <p>
                    Lọc theo:
                    <select class="dashboard-filter form-control">
                        <option>--Chọn--</option>
                        <option value="7ngay">7 ngày qua</option>
                        <option value="thangtruoc">tháng trước</option>
                        <option value="thangnay">tháng này</option>
                        <option value="365ngayqua">365 ngày qua</option>
                    </select>
                </p>

            </div>
        </form>

        <div class="col-lg-4">
            <div id="myfirstchart" style="height: 250px;"></div>
        </div>

</div>
@endsection
