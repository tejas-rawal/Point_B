setInterval(function() {
  $.getJSON('/activities.json', function(activities) {
    // code to remove old activities
    // code to insert new activities
  });
}, 5000);