import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { appConfigurations } from 'config';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      cache: true,
      load: appConfigurations,
    }),
  ],
})
export class AppConfigModule {}
