(function () {

  window.PostForm = function (options) {

    var $root = options.root;
    var posts = options.posts;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newPost = {
        thing: $('.thing', $root).val(),
        description: $('.description', $root).val(),
        images: $('.images#fileInput', $root).fileupload({
          dataType: 'json',
          add: function(e,data){
            data.submit();
          }
        });
      };
      console.log(newPost);
      posts.create(newPost);
    });
  };
})();