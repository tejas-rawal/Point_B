(function () {

  window.Post = function () {
    var posts = [];

    $.observable(this);

    this.create = function(newPost) {
      var self = this;

      $.post(g.destinationPostsUrl, newPost, function (data) {
        posts.push(newPost);
        self.trigger('create', newPost);
        console.log(data);
      });
    };
  };
})();