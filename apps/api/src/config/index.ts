import { appConfiguration } from './app.config';
import { prismaConfiguration } from './prisma.config';
import { throttlerConfiguration } from './throttler.config';

export const appConfigurations = [
  appConfiguration,
  prismaConfiguration,
  throttlerConfiguration,
];
