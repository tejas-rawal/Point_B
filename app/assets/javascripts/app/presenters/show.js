(function () {
  var destinationPosts = new Post();
  
  var formPresenter = new PostFrom({
    root: $('form.new-post'),
    posts: destinationPosts
  });

  var wallPresenter = new PostWall ({
    root: $('.post-wall'),
    posts: destinationPosts
  });

  
}) ();

