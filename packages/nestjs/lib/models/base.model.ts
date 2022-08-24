export abstract class BaseModel<T> {
  constructor(partial: Partial<T>) {
    Object.assign(this, partial);
  }
}
