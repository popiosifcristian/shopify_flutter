/// Query to get articles by query
const String getNArticlesWithQuerySortedQuery = r'''
query($x : Int, $sortKey : ArticleSortKeys, $reverse: Boolean, $query: String){
  articles(first: $x, sortKey: $sortKey, reverse: $reverse, query: $query) {
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
