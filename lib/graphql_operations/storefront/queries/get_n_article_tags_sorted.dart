/// Query to get article tags sorted
const String getNArticleTagsSortedQuery = r'''
query($x: Int, $sortKey: ArticleSortKeys, $reverse: Boolean){
  articles(first: $x, sortKey: $sortKey, reverse: $reverse) {
    edges {
      cursor
      node {
        tags
      }
    }
  }
}
''';
