import { PrismaPaginator, serializeCollection } from '@itourism/nestjs';
import { Injectable } from '@nestjs/common';
import { NotFoundError } from 'errors/not-found.error';
import { PrismaService } from 'infra/prisma/prisma.service';
import { AttractionModel } from 'models/attraction.model';
import type { AttractionType } from 'models/attraction.model';

@Injectable()
export class AttractionsService {
  constructor(private readonly prismaService: PrismaService) {}

  async findAllByCityId(
    cityId: string,
    type?: AttractionType,
    paginator?: PrismaPaginator,
  ): Promise<AttractionModel[]> {
    if (type) {
      const attractions = await this.prismaService.attraction.findMany({
        where: { cityId, type },
        skip: paginator?.skip,
        take: paginator?.take,
      });

      return serializeCollection(attractions, AttractionModel);
    }

    const attractions = await this.prismaService.attraction.findMany({
      where: { cityId },
      skip: paginator?.skip,
      take: paginator?.take,
    });

    return serializeCollection(attractions, AttractionModel);
  }

  async findOneById(id: string): Promise<AttractionModel> {
    const attraction = await this.prismaService.attraction.findUnique({
      where: { id },
      select: {
        id: true,
        name: true,
        type: true,
        cityId: true,
        latitude: true,
        longitude: true,
        banner: true,
        gallery: true,
        description: true,
        address: true,
        map: true,
        rate: true,
        createdAt: true,
        updatedAt: true,
      },
    });

    if (!attraction) {
      throw new NotFoundError('Layout not found');
    }

    return AttractionModel.serialize(attraction);
  }
}
