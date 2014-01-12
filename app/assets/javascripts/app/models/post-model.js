(function () {

  window.Post = function () {
    var posts = [];

    $.observable(this);

    this.create = function(newPost) {
      var self = this;

      $.post(g.destinationPostsUrl, newPost, function (data) {
        posts.push(newPost);
        self.trigger('create', newPost);
      });
    };

    this.initializeWith = function (initialPosts) {
      for (var i = 0; i < initialPosts.length; i += 1) {
        var c = initialPosts[i];
        posts.push(c);
        this.trigger('create', c);
      }
    }
  };
})();