import { PrismaClient } from '@prisma/client';

import data from './seeds.json';

const prisma = new PrismaClient();

async function seeder() {
  console.log('Clear database');
  await prisma.eventSchedule.deleteMany({});
  await prisma.event.deleteMany({});
  await prisma.city.deleteMany({});

  // Create cities
  console.log('Creating cities...');
  await Promise.all(
    data.cities.map(async city => {
      return prisma.city.create({
        data: {
          id: city.id,
          name: city.name,
        },
      });
    }),
  );
  console.log('Cities created');

  // Create events
  console.log('Creating events...');
  await Promise.all(
    data.events.map(async event => {
      return prisma.event.create({
        data: {
          id: event.id,
          name: event.name,
          description: event.description,
          address: event.address,
          map: event.map,
          gallery: event.gallery,
          banner: event.banner,
          city: {
            connect: {
              id: event.cityId,
            },
          },
        },
      });
    }),
  );
  console.log('Events created');

  // Create event schedules
  console.log('Creating event schedules...');
  await Promise.all(
    data.eventSchedule.map(async eventSchedule => {
      return prisma.eventSchedule.create({
        data: {
          id: eventSchedule.id,
          date: new Date(eventSchedule.date),
          event: {
            connect: {
              id: eventSchedule.eventId,
            },
          },
        },
      });
    }),
  );
  console.log('Event schedules created');
}

seeder()
  .catch(e => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
