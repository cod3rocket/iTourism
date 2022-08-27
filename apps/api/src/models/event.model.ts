/* eslint-disable no-use-before-define */
import { BaseModel } from '@itourism/nestjs';

export class EventModel extends BaseModel<EventModel> {
  id: string;

  name: string;

  cityId: string;

  banner: string;

  gallery: string[];

  description: string;

  address: string;

  map: string;

  createdAt: Date;

  updatedAt: Date;
}
