/// Query to get n articles sorted
const String getNArticlesSortedQuery = r'''
query($x : Int, $sortKey : ArticleSortKeys, $reverse: Boolean){
  articles(first: $x, sortKey: $sortKey, reverse: $reverse) {
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
