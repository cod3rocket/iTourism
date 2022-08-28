import { PrismaPaginator, serializeCollection } from '@itourism/nestjs';
import { Injectable } from '@nestjs/common';
import { PrismaService } from 'infra/prisma/prisma.service';
import { CitiesModel } from 'models/cities.model';

@Injectable()
export class CitiesService {
  constructor(private readonly prismaService: PrismaService) {}

  async findAll(paginator?: PrismaPaginator): Promise<CitiesModel[]> {
    const cities = await this.prismaService.city.findMany({
      skip: paginator?.skip,
      take: paginator?.take,
    });

    return serializeCollection(cities, CitiesModel);
  }
}
