function initMap() {
    var funglasses = { lat: 4.885, lng: 114.931 };
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 16,
        center: funglasses
    });
    var marker = new google.maps.Marker({
        position: funglasses,
        map: map
    });
}