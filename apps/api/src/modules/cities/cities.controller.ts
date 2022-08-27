import { Paginator, UsePaginator } from '@itourism/nestjs';
import {
  CacheInterceptor,
  Controller,
  Get,
  UseInterceptors,
} from '@nestjs/common';
import { CitiesModel } from 'models/cities.model';

import { CitiesService } from './cities.service';

@Controller('cities')
@UseInterceptors(CacheInterceptor)
export class CitiesController {
  constructor(private readonly citiesService: CitiesService) {}

  @Get()
  async findAll(@UsePaginator() paginator?: Paginator): Promise<CitiesModel[]> {
    return this.citiesService.findAll(paginator?.prisma);
  }
}
