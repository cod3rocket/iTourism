/* eslint-disable no-use-before-define */
/* eslint-disable no-shadow */
import { BaseModel } from '@itourism/nestjs';

export class AttractionModel extends BaseModel<AttractionModel> {
  id: string;

  name: string;

  type: string;

  cityId: string;

  latitude: number;

  longitude: number;

  banner: string;

  gallery: string[];

  description: string;

  address: string;

  map: string;

  rate: number;

  createdAt: Date;

  updatedAt: Date;

  static serialize(attraction: AttractionModel): AttractionModel {
    return new AttractionModel({
      id: attraction.id,
      name: attraction.name,
      type: attraction.type,
      cityId: attraction.cityId,
      latitude: attraction.latitude,
      longitude: attraction.longitude,
      banner: attraction.banner,
      gallery: attraction.gallery,
      description: attraction.description,
      address: attraction.address,
      map: attraction.map,
      rate: attraction.rate,
      createdAt: attraction.createdAt,
      updatedAt: attraction.updatedAt,
    });
  }
}

enum attractionType {
  hotel,
  attraction,
  restaurants,
  bars,
}

export type AttractionType = keyof typeof attractionType;
