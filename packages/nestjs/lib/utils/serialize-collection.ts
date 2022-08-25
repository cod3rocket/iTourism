import { BaseModel } from 'models';

export function serializeCollection<T extends BaseModel<T>, P>(
  collection: P[],
  Serializer: new (partial: Partial<T>) => T,
): T[] {
  return collection.map(value => new Serializer(value));
}
