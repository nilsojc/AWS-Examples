/* eslint-disable */
// this is an auto generated file. This will be overwritten

export const getMyAppsyncTable = /* GraphQL */ `
  query GetMyAppsyncTable($pk: String!) {
    getMyAppsyncTable(pk: $pk) {
      pk
      fruit
      level
      __typename
    }
  }
`;
export const listMyAppsyncTables = /* GraphQL */ `
  query ListMyAppsyncTables(
    $filter: TableMyAppsyncTableFilterInput
    $limit: Int
    $nextToken: String
  ) {
    listMyAppsyncTables(filter: $filter, limit: $limit, nextToken: $nextToken) {
      items {
        pk
        fruit
        level
        __typename
      }
      nextToken
      __typename
    }
  }
`;
