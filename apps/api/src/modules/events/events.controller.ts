import { Paginator, UsePaginator } from '@itourism/nestjs';
import { Controller, Get } from '@nestjs/common';
import { EventModel } from 'models/event';

import { EventsService } from './events.service';

@Controller('events')
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Get()
  async findAll(@UsePaginator() paginator?: Paginator): Promise<EventModel[]> {
    return this.eventsService.findAll(paginator?.prisma);
  }
}
