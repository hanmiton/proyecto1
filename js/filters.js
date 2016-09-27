(function () {

  angular.module('ingedex.filters', [])
    .filter('normalize', function () {
      return function (input) {
          if (!input) return "";
          
          input = input
                  .replace('♀', 'f')
                  .replace('♂', 'm')
                  .replace(/\W+/g, "");
          return input;
      };
    })

    .filter('imageify', ['$filter', function ($filter) {
    return function (input) {
      var url = "img/ingenieros/" + $filter('normalize')(input) + ".jpg";
      return url;
    };
  }]);

})();
