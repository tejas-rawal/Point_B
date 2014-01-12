(function () {

  window.PostForm = function (options) {

    var $root = options.root;
    var posts = options.posts;

    $root.on('submit', function (e) {
      e.preventDefault();

      var newPost = {
        event_type: $('.event', $root).val(),
        description: $('.description', $root).val(),
        images: $('images', $root).val()
      };

      posts.create(newPost);

      // $root.find('').val('');
    });
  };
}) ();