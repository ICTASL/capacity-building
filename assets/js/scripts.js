<script src="{{ '/assets/js/simple-jekyll-search.min.js' | relative_url }}"></script>
<script>
  SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '/search.json',
    searchResultTemplate: '<li><a href="{url}">{title}</a></li>',
    noResultsText: 'No results found'
  });
</script>
