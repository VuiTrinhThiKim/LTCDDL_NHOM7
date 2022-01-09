<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Favorite;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Redirect;
use Session;

class FavoriteController extends Controller
{
    public function loginAuthentication()
    {
        $customer_username = Session::get('customer_id');
        if ($customer_username == null) {
            return Redirect::to('login-to-checkout');
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

    }

    /**
     * Favorites or unfavorites a product.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function favorites(Request $request)
    {

        $customer = $request->customer_id;
        $product = $request->product_id;
        $respone_txt = '';

        $favorited = Favorite::where([
            ['customer_id', '=', $customer],
            ['product_id', '=', $product]
        ])->first();

        // Trường hợp tìm thấy dòng favorite
        if ($favorited) {
            if ($favorited->status == 1) {
                $favorited->status = 0;
                $favorited->save();

                $respone_txt = 'Bỏ yêu thích sản phẩm thành công';
            } else {
                $favorited->status = 1;
                $favorited->save();

                $respone_txt = 'Yêu thích sản phẩm thành công';
            }
        } else {
            $favorite = new Favorite();
            $favorite->customer_id = $request->customer_id;
            $favorite->product_id = $request->product_id;
            $favorite->status = 1;

            $favorite->save();

            $respone_txt = 'Yêu thích sản phẩm thành công';
        }

        $favorite_list = Favorite::where([
            ['customer_id', '=', $customer],
            ['status', '=', 1]
        ])->select('product_id')->get();
        Session::put('favorite_list', $favorite_list);

        return response()->json(['msg' => $respone_txt], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Favorite  $favorite
     * @return \Illuminate\Http\Response
     */
    public function show(Favorite $favorite)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Favorite  $favorite
     * @return \Illuminate\Http\Response
     */
    public function edit(Favorite $favorite)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Favorite  $favorite
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Favorite $favorite)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Favorite  $favorite
     * @return \Illuminate\Http\Response
     */
    public function destroy(Favorite $favorite)
    {
        //
    }

    /**
     * Show favorited products for a customer
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function view_all(Request $request)
    {
        $customer = Session::get('customer_id');
        $favorite_array = Favorite::where([
            ['customer_id', '=', $customer],
            ['status', '=', '1']
        ])
            ->join('products', 'products.product_id', '=', 'favorite.product_id')
            ->orderby('favorite.updated_at')
            ->get();
        return view('page.favorite.favorite_view')->with('favorite_list', $favorite_array);
    }
}
