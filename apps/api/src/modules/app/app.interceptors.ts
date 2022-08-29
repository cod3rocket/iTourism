import { ErrorsInterceptor } from '@itourism/nestjs';
import { ClassSerializerInterceptor } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { NestExpressApplication } from '@nestjs/platform-express';

export function applyGlobalInterceptors(app: NestExpressApplication) {
  const appReflector = app.get<Reflector>(Reflector);

  app.useGlobalInterceptors(new ClassSerializerInterceptor(appReflector));

  app.useGlobalInterceptors(new ErrorsInterceptor());
}
