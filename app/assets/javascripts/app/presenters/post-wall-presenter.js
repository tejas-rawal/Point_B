(function () {

  window.PostWall = function (options) {

    var postTemplate = $('#templates .post').html();
    console.log(postTemplate);
    var $root = options.root;
    var posts = options.posts;

    posts.on('create', function (newPost) {
      var newHtml = $.render(postTemplate, newPost);
      console.log(newPost);
      $root.append(newHtml).slideDown(newHtml);
    });
  };
})();