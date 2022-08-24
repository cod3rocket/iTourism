import { Module } from '@nestjs/common';
import { PrismaModule } from 'infra/prisma/prisma.module';

import { EventsController } from './events.controller';
import { EventsService } from './events.service';

@Module({
  imports: [PrismaModule],
  providers: [EventsService],
  controllers: [EventsController],
})
export class EventsModule {}
