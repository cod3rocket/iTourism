import { ConfigService } from '@nestjs/config';
import { NestFactory } from '@nestjs/core';
import { NestExpressApplication } from '@nestjs/platform-express';
import { applyGlobalInterceptors } from 'modules/app/app.interceptors';

import { AppModule } from './modules/app/app.module';

async function bootstrap() {
  const app = await NestFactory.create<NestExpressApplication>(AppModule);

  // Apply global interceptors
  applyGlobalInterceptors(app);

  const appConfig = app.get(ConfigService);

  const port = appConfig.get('app.port');

  await app.listen(port);
}
bootstrap();
