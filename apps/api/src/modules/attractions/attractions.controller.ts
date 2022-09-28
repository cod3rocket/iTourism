import { Paginator, UsePaginator } from '@itourism/nestjs';
import {
  CacheInterceptor,
  Controller,
  Get,
  Param,
  Query,
  UseInterceptors,
} from '@nestjs/common';
import { AttractionModel } from 'models/attraction.model';
import type { AttractionType } from 'models/attraction.model';

import { AttractionsService } from './attractions.service';

@Controller('attractions')
@UseInterceptors(CacheInterceptor)
export class AttractionsController {
  constructor(private readonly attractionsService: AttractionsService) {}

  @Get()
  async findAllByCityId(
    @Query('cityId') cityId: string,
    @Query('type') type?: AttractionType,
    @UsePaginator() paginator?: Paginator,
  ): Promise<AttractionModel[]> {
    if (type) {
      return this.attractionsService.findAllByCityId(
        cityId,
        type,
        paginator?.prisma,
      );
    }

    return this.attractionsService.findAllByCityId(
      cityId,
      undefined,
      paginator?.prisma,
    );
  }

  @Get(':id')
  async findById(@Param(':id') id: string): Promise<AttractionModel> {
    return this.attractionsService.findById(id);
  }
}
