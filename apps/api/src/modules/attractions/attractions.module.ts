import { Module } from '@nestjs/common';
import { PrismaModule } from 'infra/prisma/prisma.module';

import { AttractionsController } from './attractions.controller';
import { AttractionsService } from './attractions.service';

@Module({
  imports: [PrismaModule],
  providers: [AttractionsService],
  controllers: [AttractionsController],
})
export class AttractionsModule {}
