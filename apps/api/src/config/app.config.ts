import { registerAs } from '@nestjs/config';

export type AppConfiguration = {
  env: 'development' | 'production';
  port: number;
};

export const appConfiguration = registerAs(
  'app',
  () =>
    ({
      env: process.env.NODE_ENV,
      port: Number(process.env.PORT) || 3000,
    } as AppConfiguration),
);
