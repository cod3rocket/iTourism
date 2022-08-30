import {
  CallHandler,
  ExecutionContext,
  Injectable,
  NestInterceptor,
  NotFoundException,
  UnprocessableEntityException,
} from '@nestjs/common';
import { NotFoundError, ServiceError } from 'errors';
import { catchError, Observable } from 'rxjs';

@Injectable()
export class ErrorsInterceptor implements NestInterceptor {
  intercept(_context: ExecutionContext, next: CallHandler): Observable<any> {
    return next.handle().pipe(
      catchError((error: any) => {
        if (error instanceof ServiceError) {
          throw new UnprocessableEntityException(error.message);
        }
        if (error instanceof NotFoundError) {
          throw new NotFoundException(error.message);
        }

        throw error;
      }),
    );
  }
}
