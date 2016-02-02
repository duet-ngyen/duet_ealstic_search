$(document).ready(function() {
  $('.ui.search')
  .search({
    apiSettings: {
      url: "//" + location.host + "/articles/search?q={query}"
    },
    fields: {
      results : 'articles',
      title   : 'title',
      url     : 'url'
    },
    minCharacters : 3
  })
;
});
