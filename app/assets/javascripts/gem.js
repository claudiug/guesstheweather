function getGeolocation(){
    navigator.geolocation.getCurrentPosition(setGeoCookie);
}

function setGeoCookie(position) {
    var cookie_values = position.coords.latitude + "|" + position.coords.longitude;
    document.cookie = "lat_lng=" + escape(cookie_values);
}