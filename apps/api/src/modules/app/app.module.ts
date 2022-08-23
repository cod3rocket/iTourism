import { Module } from '@nestjs/common';
import { AppConfigModule } from 'infra/config/config.module';

@Module({
  imports: [AppConfigModule],
})
export class AppModule {}
