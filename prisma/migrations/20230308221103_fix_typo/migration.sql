/*
  Warnings:

  - You are about to drop the column `type` on the `Plume` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `Sans` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `Circlet` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `Flower` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `Goblet` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Plume" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "setId" INTEGER NOT NULL,
    "rarity" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "main" TEXT NOT NULL,
    "atk" INTEGER NOT NULL DEFAULT 0,
    "atkPer" REAL NOT NULL DEFAULT 0,
    "def" INTEGER NOT NULL DEFAULT 0,
    "defPer" REAL NOT NULL DEFAULT 0,
    "critRate" REAL NOT NULL DEFAULT 0,
    "critDmg" REAL NOT NULL DEFAULT 0,
    "eneChar" REAL NOT NULL DEFAULT 0,
    "eneMas" REAL NOT NULL DEFAULT 0,
    "hp" INTEGER NOT NULL DEFAULT 0,
    "hpPer" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "Plume_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Plume_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Plume" ("atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId") SELECT "atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId" FROM "Plume";
DROP TABLE "Plume";
ALTER TABLE "new_Plume" RENAME TO "Plume";
CREATE TABLE "new_Sans" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "setId" INTEGER NOT NULL,
    "rarity" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "main" TEXT NOT NULL,
    "atk" INTEGER NOT NULL DEFAULT 0,
    "atkPer" REAL NOT NULL DEFAULT 0,
    "def" INTEGER NOT NULL DEFAULT 0,
    "defPer" REAL NOT NULL DEFAULT 0,
    "critRate" REAL NOT NULL DEFAULT 0,
    "critDmg" REAL NOT NULL DEFAULT 0,
    "eneChar" REAL NOT NULL DEFAULT 0,
    "eneMas" REAL NOT NULL DEFAULT 0,
    "hp" INTEGER NOT NULL DEFAULT 0,
    "hpPer" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "Sans_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Sans_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Sans" ("atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId") SELECT "atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId" FROM "Sans";
DROP TABLE "Sans";
ALTER TABLE "new_Sans" RENAME TO "Sans";
CREATE TABLE "new_Circlet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "setId" INTEGER NOT NULL,
    "rarity" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "main" TEXT NOT NULL,
    "atk" INTEGER NOT NULL DEFAULT 0,
    "atkPer" REAL NOT NULL DEFAULT 0,
    "def" INTEGER NOT NULL DEFAULT 0,
    "defPer" REAL NOT NULL DEFAULT 0,
    "critRate" REAL NOT NULL DEFAULT 0,
    "critDmg" REAL NOT NULL DEFAULT 0,
    "eneChar" REAL NOT NULL DEFAULT 0,
    "eneMas" REAL NOT NULL DEFAULT 0,
    "hp" INTEGER NOT NULL DEFAULT 0,
    "hpPer" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "Circlet_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Circlet_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Circlet" ("atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId") SELECT "atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId" FROM "Circlet";
DROP TABLE "Circlet";
ALTER TABLE "new_Circlet" RENAME TO "Circlet";
CREATE TABLE "new_Flower" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "setId" INTEGER NOT NULL,
    "rarity" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "main" TEXT NOT NULL,
    "atk" INTEGER NOT NULL DEFAULT 0,
    "atkPer" REAL NOT NULL DEFAULT 0,
    "def" INTEGER NOT NULL DEFAULT 0,
    "defPer" REAL NOT NULL DEFAULT 0,
    "critRate" REAL NOT NULL DEFAULT 0,
    "critDmg" REAL NOT NULL DEFAULT 0,
    "eneChar" REAL NOT NULL DEFAULT 0,
    "eneMas" REAL NOT NULL DEFAULT 0,
    "hp" INTEGER NOT NULL DEFAULT 0,
    "hpPer" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "Flower_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Flower_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Flower" ("atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId") SELECT "atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId" FROM "Flower";
DROP TABLE "Flower";
ALTER TABLE "new_Flower" RENAME TO "Flower";
CREATE TABLE "new_Goblet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "setId" INTEGER NOT NULL,
    "rarity" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "main" TEXT NOT NULL,
    "atk" INTEGER NOT NULL DEFAULT 0,
    "atkPer" REAL NOT NULL DEFAULT 0,
    "def" INTEGER NOT NULL DEFAULT 0,
    "defPer" REAL NOT NULL DEFAULT 0,
    "critRate" REAL NOT NULL DEFAULT 0,
    "critDmg" REAL NOT NULL DEFAULT 0,
    "eneChar" REAL NOT NULL DEFAULT 0,
    "eneMas" REAL NOT NULL DEFAULT 0,
    "hp" INTEGER NOT NULL DEFAULT 0,
    "hpPer" REAL NOT NULL DEFAULT 0,
    CONSTRAINT "Goblet_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Goblet_setId_fkey" FOREIGN KEY ("setId") REFERENCES "Set" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Goblet" ("atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId") SELECT "atk", "atkPer", "critDmg", "critRate", "def", "defPer", "eneChar", "eneMas", "hp", "hpPer", "id", "main", "rank", "rarity", "setId", "userId" FROM "Goblet";
DROP TABLE "Goblet";
ALTER TABLE "new_Goblet" RENAME TO "Goblet";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
