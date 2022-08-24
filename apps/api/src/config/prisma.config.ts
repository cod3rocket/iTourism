import { registerAs } from '@nestjs/config';

export const prismaConfiguration = registerAs('prisma', () => ({
  url: process.env.DATABASE_URL,
}));
