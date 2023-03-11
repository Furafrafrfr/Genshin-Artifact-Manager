import { Flower, PrismaClient } from '@prisma/client';
import { ArtifactBaseInfo, SubStats } from '../type/artifact.type';

const prisma = new PrismaClient();

export async function createFlower(
  info: ArtifactBaseInfo,
  sub: SubStats
): Promise<Flower> {
  const data = await prisma.flower.create({
    data: {
      rarity: info.rarity,
      rank: info.rank,
      main: info.main,
      set: {
        connect: {
          id: info.setId,
        },
      },
      user: {
        connect: {
          id: info.userId,
        },
      },
      ...sub,
    },
  });

  return data;
}

export async function updateFlower(
  id: number,
  info: ArtifactBaseInfo,
  sub: SubStats
): Promise<Flower> {
  const data = await prisma.flower.update({
    where: {
      id,
    },
    data: {
      rarity: info.rarity,
      rank: info.rank,
      main: info.main,
      set: {
        connect: {
          id: info.setId,
        },
      },
      user: {
        connect: {
          id: info.userId,
        },
      },
      ...sub,
    },
  });

  return data;
}

export async function getFlower(): Promise<Flower[]> {
  const data = await prisma.flower.findMany();
  return data;
}

export async function deleteFlower(id: number): Promise<Flower> {
  const data = await prisma.flower.delete({
    where: {
      id,
    },
  });
  
  return data;
}
