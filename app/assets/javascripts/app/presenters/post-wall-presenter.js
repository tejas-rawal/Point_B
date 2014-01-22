(function () {

  window.PostWall = function (options) {

    var postTemplate = $('#templates .post').html();
    var $root = options.root;
    var posts = options.posts;

    posts.on('create', function (newPost) {
      var newHtml = $.render(postTemplate, newPost);
      console.log(newPost);
      $root.prepend(newHtml);
    });
  };
})();