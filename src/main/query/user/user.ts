import { PrismaClient, User } from '@prisma/client';

const prisma = new PrismaClient();

export async function craeteUser(
  name: string,
  description: string
): Promise<User> {
  const data = prisma.user.create({
    data: {
      name,
      description,
    },
  });

  return data;
}

export async function getUser(): Promise<User[]> {
  const data = prisma.user.findMany();
  return data;
}

export async function updateUser(
  id: number,
  user: {
    name: string;
    description: string;
  }
): Promise<User> {
  const data = prisma.user.update({
    where: {
      id,
    },
    data: {
      ...user,
    },
  });
  return data;
}

export async function deleteUser(id: number): Promise<User> {
  const data = prisma.user.delete({
    where: {
      id,
    },
  });

  prisma.preset.deleteMany({
    where: {
      userId: id,
    },
  });

  (['flower', 'plume', 'sans', 'goblet', 'circlet'] as const).forEach(
    (part) => {
      prisma[part].deleteMany({
        where: {
          userId: id,
        },
      });
    }
  );

  return data;
}
