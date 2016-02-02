# $(document).ready ->

#   $(".ui.search").search
#     apiSettings:
#       url: '//api.github.com/search/repositories?q={query}'
#     fields:
#       results : "items",
#       title   : "title",
#       url     : "url"
#     minCharacters : 1

#   navigate_to_search_results_page = (query) ->
#     query = query.trim()
#     return if query.length == 0
#     location.href = "//" + location.host + "/documents/search?q={#{query}}"

#   $("#documentSearchBox input").keydown (e) ->
#     return unless e.which == 13
#     navigate_to_search_results_page e.target.value

#   $("#documentFilter").dropdown()
