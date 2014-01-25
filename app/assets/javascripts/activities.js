(function () {
  var interval = null;
  $(document).on('ready',function(){
      interval = setInterval(updateFeed,500000);
  });

  function updateFeed(){
      $.ajax({
          url: '/activities.json'+decodeURIComponent(JSON.stringify({"json":[{"j":"son"}]})),
          contentType: "application/json; charset=utf-8",
          dataType: "json",
          success: function(data){
              $('.activity').html(data);
          },
          error: function(){
              clearInterval(interval); // stop the interval
              $('.activity').html('<span style="color:red">Connection problems</span>');
          }
      });
  }
})();