(function () {

  window.PostForm = function (options) {

    var $root = options.root;
    var posts = options.posts;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newPost = {
        thing: $('.thing', $root).val(),
        description: $('.description', $root).val(),
        images: $('.images', $root).val()
      };

      $(this).slideUp('slow');

      $('.thing', $root).val("");
      $('.description', $root).val("");

      posts.create(newPost);
    });
  };
})();