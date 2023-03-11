import { Preset, PrismaClient } from '@prisma/client';
import { ArtifactIds } from './preset.type';

const prisma = new PrismaClient();

export async function createPreset(
  title: string,
  description: string,
  artifacts: ArtifactIds
): Promise<Preset> {
  const data = await prisma.preset.create({
    data: {
      title,
      description,
      ...artifacts,
    },
  });

  return data;
}

export async function getAllPreset(): Promise<Preset[]> {
  const data = await prisma.preset.findMany();
  return data;
}

export async function updatePreset(
  id: number,
  preset: {
    title?: string;
    description?: string;
    flowerId?: number;
    plumeId?: number;
    sansId?: number;
    gobletId?: number;
    circletId?: number;
  }
): Promise<Preset> {
  const data = await prisma.preset.update({
    where: {
      id,
    },
    data: {
      ...preset,
    },
  });
  return data;
}

export async function deletePreset(id: number): Promise<Preset> {
  const data = await prisma.preset.delete({
    where: {
      id,
    },
  });
  return data;
}
