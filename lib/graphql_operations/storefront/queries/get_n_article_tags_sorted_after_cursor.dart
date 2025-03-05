/// Query to get article tags sorted after cursor
const String getNArticleTagsSortedAfterCursorQuery = r'''
query($x: Int, $cursor: String, $sortKey: ArticleSortKeys, $reverse: Boolean){
  articles(first: $x, cursor: $cursor, sortKey: $sortKey, reverse: $reverse) {
    edges {
      cursor
      node {
        tags
      }
    }
  }
}
''';
