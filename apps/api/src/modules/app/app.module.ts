import { Module } from '@nestjs/common';
import { APP_GUARD } from '@nestjs/core';
import { ThrottlerGuard } from '@nestjs/throttler';
import { AppCacheModule } from 'infra/cache/cache.module';
import { AppConfigModule } from 'infra/config/config.module';
import { AppThrottlerModule } from 'infra/throttler/throttler.module';
import { AttractionsModule } from 'modules/attractions/attractions.module';
import { CitiesModule } from 'modules/cities/cities.module';
import { EventsModule } from 'modules/events/events.module';

@Module({
  imports: [
    AppConfigModule,
    AppCacheModule,
    AppThrottlerModule,
    EventsModule,
    AttractionsModule,
    CitiesModule,
  ],
  providers: [
    {
      provide: APP_GUARD,
      useClass: ThrottlerGuard,
    },
  ],
})
export class AppModule {}
