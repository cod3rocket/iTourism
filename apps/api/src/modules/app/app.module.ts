import { Module } from '@nestjs/common';
import { APP_GUARD } from '@nestjs/core';
import { ThrottlerGuard } from '@nestjs/throttler';
import { AppConfigModule } from 'infra/config/config.module';
import { AppThrottlerModule } from 'infra/throttler/throttler.module';
import { AttractionsModule } from 'modules/attractions/attractions.module';
import { EventsModule } from 'modules/events/events.module';

@Module({
  imports: [
    AppConfigModule,
    AppThrottlerModule,
    EventsModule,
    AttractionsModule,
  ],
  providers: [
    {
      provide: APP_GUARD,
      useClass: ThrottlerGuard,
    },
  ],
})
export class AppModule {}
