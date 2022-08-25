import { Module } from '@nestjs/common';
import { AppConfigModule } from 'infra/config/config.module';
import { EventsModule } from 'modules/events/events.module';

@Module({
  imports: [AppConfigModule, EventsModule],
})
export class AppModule {}
