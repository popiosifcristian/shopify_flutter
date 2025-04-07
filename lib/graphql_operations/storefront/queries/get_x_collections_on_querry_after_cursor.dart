/// Query to get collections by query paginated
const String getXCollectionsOnQueryAfterCursorQuery = r'''
query( $cursor: String, $limit : Int, $query: String, $reverse: Boolean){
  collections(query: $query, first: $limit, after: $cursor, reverse: $reverse) {
    edges {
      node {
        title
        description
        descriptionHtml
        handle
        id
        updatedAt
        image {
          altText
          id
          originalSrc
        }
      }
      cursor
    }
    pageInfo {
      hasNextPage
    }
  }
}''';
