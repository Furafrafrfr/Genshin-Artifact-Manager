/*
  Warnings:

  - Added the required column `userId` to the `Preset` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Preset" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "flowerId" INTEGER NOT NULL,
    "plumeId" INTEGER NOT NULL,
    "sansId" INTEGER NOT NULL,
    "gobletId" INTEGER NOT NULL,
    "circletId" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    CONSTRAINT "Preset_flowerId_fkey" FOREIGN KEY ("flowerId") REFERENCES "Flower" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Preset_plumeId_fkey" FOREIGN KEY ("plumeId") REFERENCES "Plume" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Preset_sansId_fkey" FOREIGN KEY ("sansId") REFERENCES "Sans" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Preset_gobletId_fkey" FOREIGN KEY ("gobletId") REFERENCES "Goblet" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Preset_circletId_fkey" FOREIGN KEY ("circletId") REFERENCES "Circlet" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Preset_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Preset" ("circletId", "description", "flowerId", "gobletId", "id", "plumeId", "sansId", "title") SELECT "circletId", "description", "flowerId", "gobletId", "id", "plumeId", "sansId", "title" FROM "Preset";
DROP TABLE "Preset";
ALTER TABLE "new_Preset" RENAME TO "Preset";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
