/// Query to get articles paginated
const String getNArticlesSortedAfterCursorQuery = r'''
query($x : Int, $cursor: String, $sortKey : ArticleSortKeys, $reverse: Boolean){
  articles(first: $x, after: $cursor, sortKey: $sortKey, reverse: $reverse) {
    edges {
      cursor
      node {
        authorV2 {
          bio
          email
          firstName
          lastName
          name
        }
        comments(first: 250) {
          edges {
            node {
              author {
                email
                name
              }
              content
              contentHtml
              id
            }
          }
        }
        content
        contentHtml
        excerpt
        excerptHtml
        handle
        id
        image {
          altText
          id
          originalSrc
        }
        publishedAt
        tags
        title
      }
    }
  }
}
''';
