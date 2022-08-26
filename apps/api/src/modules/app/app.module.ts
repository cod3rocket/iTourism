import { Module } from '@nestjs/common';
import { AppConfigModule } from 'infra/config/config.module';
import { AttractionsModule } from 'modules/attractions/attractions.module';
import { EventsModule } from 'modules/events/events.module';

@Module({
  imports: [AppConfigModule, EventsModule, AttractionsModule],
})
export class AppModule {}
