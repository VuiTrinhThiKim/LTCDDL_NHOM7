function favoritesOrUnfavorites(customer_id, product_id) {
    let url = "/favorites";

    let data = {
        customer_id: customer_id,
        product_id: product_id,
    };

    $.ajax({
        type: "POST",
        url: url,
        data: data,
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
        success: (data) => {
            window.alert(data.msg);
            location.reload();
        },
        error: (err) => {
            console.log(err);
        },
    });
}
function unfavorites(customer_id, product_id) {
    let url = "/favorites";

    let data = {
        customer_id: customer_id,
        product_id: product_id,
    };

    $.ajax({
        type: "POST",
        url: url,
        data: data,
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
        success: (data) => {
            window.alert(data.msg);
            location.reload();
        },
        error: (err) => {
            console.log(err);
        },
    });
}
