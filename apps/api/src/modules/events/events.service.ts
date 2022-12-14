import { PrismaPaginator, serializeCollection } from '@itourism/nestjs';
import { Injectable } from '@nestjs/common';
import { PrismaService } from 'infra/prisma/prisma.service';
import { EventModel } from 'models/event.model';

@Injectable()
export class EventsService {
  constructor(private readonly prismaService: PrismaService) {}

  async findAll(paginator?: PrismaPaginator): Promise<EventModel[]> {
    const events = await this.prismaService.event.findMany({
      skip: paginator?.skip,
      take: paginator?.take,
    });

    return serializeCollection(events, EventModel);
  }

  async findAllByCityId(
    cityId: string,
    paginator?: PrismaPaginator,
  ): Promise<EventModel[]> {
    const events = await this.prismaService.event.findMany({
      where: { cityId },
      skip: paginator?.skip,
      take: paginator?.take,
    });

    return serializeCollection(events, EventModel);
  }
}
