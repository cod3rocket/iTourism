export type PaginatorConfig = {
  defaultSize?: number;
  maxSize?: number;
  defaultPage?: number;
};

export interface PrismaPaginator {
  skip: number;
  take: number;
}

export interface Paginator {
  previousPage: number | null;
  currentPage: number;
  nextPage: number | null;
  size: number;
  prisma: PrismaPaginator;
}
