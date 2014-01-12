(function () {

  window.PostWall = function (options) {

    var postTemplate = ;
    var $root = options.root;
    var posts = options.posts;

    posts.on('create', function (newPost) {
      var newHtml = $.render(postTemplate, newPost);
      $root.append(newHtml);
    });
  };
}) ();