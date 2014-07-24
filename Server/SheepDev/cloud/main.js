// Use Parse.Cloud.define to define as many cloud functions as you want.
// For example:
Parse.Cloud.define("hello", function(request, response) {
 
var pushQuery = new Parse.Query(Parse.Installation);
  pushQuery.equalTo('deviceType', 'ios');
     
  Parse.Push.send({
    where: pushQuery, // Set our Installation query
    data: {
      alert: "New comment: " + "(　´･‿･｀)"
    }
  }, {
    success: function() {
      // Push was successful
    },
    error: function(error) {
      throw "Got an error " + error.code + " : " + error.message;
    }
  });
 
  response.success("Hello world!");
});