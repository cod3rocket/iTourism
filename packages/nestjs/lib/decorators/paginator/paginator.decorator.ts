import { createParamDecorator } from '@nestjs/common';
import type { Request } from 'express';

import { Paginator, PaginatorConfig } from './paginator.types';

const defaultConfig: PaginatorConfig = {
  defaultSize: 10,
  maxSize: 100,
  defaultPage: 1,
};

export const UsePaginator = createParamDecorator<Partial<PaginatorConfig>>(
  (
    // eslint-disable-next-line default-param-last
    { maxSize = 100, defaultSize = 10, defaultPage = 1 } = defaultConfig,
    ctx,
  ): Paginator => {
    const req: Request = ctx.switchToHttp().getRequest();

    const page = Number(req.query?.page) || defaultPage;

    const size = Math.min(Number(req.query?.size), maxSize) || defaultSize;

    const skip = (page - 1) * size;

    return {
      previousPage: page > 1 ? page - 1 : null,
      currentPage: page,
      nextPage: page < Number.MAX_SAFE_INTEGER ? page + 1 : null,
      size,
      prisma: {
        skip,
        take: size,
      },
    };
  },
);
