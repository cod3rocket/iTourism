import { Paginator, UsePaginator } from '@itourism/nestjs';
import { Controller, Get, Param, Query } from '@nestjs/common';
import { AttractionModel, AttractionType } from 'models/attraction.model';

import { AttractionsService } from './attractions.service';

@Controller('attractions')
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

  @Get()
  async findById(@Param(':id') id: string): Promise<AttractionModel> {
    return this.attractionsService.findOneById(id);
  }
}
