(function () {

  window.PostForm = function (options) {

    var $root = options.root;
    var posts = options.posts;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newPost = {

      };

      posts.create(newPost);

      $root.find('').val('');
    });
  };
}) ();