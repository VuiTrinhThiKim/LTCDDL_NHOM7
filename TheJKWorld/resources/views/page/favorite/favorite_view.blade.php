@extends('layout_view')

@section('content')
<div class="features_items">
    <!--features_items-->
    <h2 class="title text-center">Danh sách sản phẩm đã yêu thích</h2>
    <?php
    $customer_id_for_fav = Session::get('customer_id');
    ?>
    @if(count($favorite_list) > 0)

    @foreach($favorite_list as $key => $product)
    <div class="col-sm-4">
        <div class="product-image-wrapper">
            <a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_slug)}}">
                <div class="single-products">
                    <div class="productinfo text-center">
                        <img src="{{asset('/upload/products/'.$product->product_image)}}" alt="{{$product->product_image}}" />
                        <h2>{{number_format($product->price).' ₫'}}</h2>
                        <p>{{$product->product_name}}</p>
                        <form action="{{URL::to('/gio-hang')}}" method="post">
                            {{csrf_field()}}
                            <input type="hidden" name="productId" value="{{$product->product_id}}">
                            <input name="productQuantity" type="hidden" value="1" />
                            @if($product->product_qty > 0)
                            <button type="submit" class="btn btn-default add-to-cart">
                                <i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
                            </button>
                            @else
                            <button type="submit" class="btn btn-default add-to-cart" disabled>
                                <i class="fa fa-shopping-cart"></i>Hết hàng
                            </button>
                            @endif
                        </form>
                    </div>
                </div>
            </a>
            <div class="choose">
                <ul class="nav nav-pills nav-justified">
                    <li>
                        @if ($customer_id_for_fav != null)
                        <a onclick="unfavorites( '{{ $customer_id_for_fav }}', '{{ $product->product_id }}' )" class="add-to-fav">
                            <i class="fa fa-minus"></i>
                            Bỏ yêu thích
                        </a>
                        @else
                        <a href="{{URL::to('/login-to-checkout')}}"><i class="fa fa-plus-square"></i>Thêm vào danh sách yêu thích</a>
                        @endif
                    </li>
                </ul>
            </div>
        </div>
    </div>
    @endforeach

    @else
    <div class="text-center empty">
        <p><i class="fa fa-shopping-cart fa-5x "></i></p>
        <p class="text-center"></i>Danh sách rỗng</p>
        <button class="btn btn-primary m-auto">
            <a href="{{URL::to('/trang-chu')}}">Đi tới danh sách sản phẩm nổi bật</a>
        </button>
    </div>

    @endif

</div>
@endsection