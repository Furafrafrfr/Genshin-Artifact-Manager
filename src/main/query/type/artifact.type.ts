export type ArtifactBaseInfo = {
  userId: number;
  setId: number;
  rarity: number;
  rank: number;
  main: string;
};

export type SubStats = {
  atk?: number;
  atkPer?: number;
  def?: number;
  defPer?: number;
  critRate?: number;
  critDmg?: number;
  eneChar?: number;
  eneMas?: number;
  hp?: number;
  hpPer?: number;
};
