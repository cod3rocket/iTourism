/* eslint-disable no-use-before-define */
import { BaseModel } from '@itourism/nestjs';

export class CitiesModel extends BaseModel<CitiesModel> {
  id: string;

  name: string;

  latitude: number;

  longitude: number;

  createdAt: Date;

  updatedAt: Date;
}
