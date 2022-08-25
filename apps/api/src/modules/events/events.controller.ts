import { Paginator, UsePaginator } from '@itourism/nestjs';
import { Controller, Get, Query } from '@nestjs/common';
import { isUUID } from 'class-validator';
import { EventModel } from 'models/event.model';

import { EventsService } from './events.service';

@Controller('events')
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Get()
  async findAll(
    @Query('cityId') cityId?: string,
    @UsePaginator() paginator?: Paginator,
  ): Promise<EventModel[]> {
    if (cityId && isUUID(cityId)) {
      return this.eventsService.findAllByCityId(cityId, paginator?.prisma);
    }
    return this.eventsService.findAll(paginator?.prisma);
  }
}
