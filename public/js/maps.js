// $(document).ready(function() {

//   var address = $('.location').text()

//   var map = new google.maps.Map(document.getElementById('maps'), {
//      mapTypeId: google.maps.MapTypeId.ROADMAP,
//      zoom: 11
//   });

//   var geocoder = new google.maps.Geocoder();

//   geocoder.geocode({
//     'address': address
//   },

//   function(results, status) {
//     if(status == google.maps.GeocoderStatus.OK) {
//        new google.maps.Marker({
//           position: results[0].geometry.location,
//           map: map
//        });
//        map.setCenter(results[0].geometry.location);
//     }
//   });
// })