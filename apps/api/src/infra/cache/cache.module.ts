import { CacheModule, Module } from '@nestjs/common';

@Module({
  imports: [
    CacheModule.register({
      isGlobal: true,
    }),
  ],
})
export class AppCacheModule {}
