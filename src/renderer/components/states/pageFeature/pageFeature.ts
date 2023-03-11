import { atom, selector, useRecoilState, useRecoilValue } from 'recoil';
import { PageFeature } from './pageFeature.type';
import { featureTextMap } from './constants';

const pageFeatureAtom = atom<PageFeature>({
  key: 'pageFeature',
  default: 'artifacts',
});

const featureTextSelector = selector({
  key: 'featureText',
  get: ({ get }) => {
    const feature = get(pageFeatureAtom);
    return featureTextMap[feature];
  },
});

export function usePageFeature(): [PageFeature, (val: PageFeature) => void] {
  const state = useRecoilState(pageFeatureAtom);
  return state;
}

export function useFeatureText(): string {
  const text = useRecoilValue(featureTextSelector);
  return text;
}
