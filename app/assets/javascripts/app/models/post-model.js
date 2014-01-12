(function () {

  window.Post = function () {
    var posts = [];

    $.observable(this);

    this.create = function(newPost) {
      var self = this;

      $.post(g.destinationPostUrl, newPost, function () {
        posts.push(newPost);
        self.trigger('create', newComment);
      });
    };
  };
}); ();