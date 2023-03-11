import React from 'react';
import { Layout } from './Layout';
import { usePageFeature } from '../states/pageFeature';
import { Artifacts } from '../features/artifacts/Artifacts';
import { Presets } from '../features/presets/Presets';

function usePageComponent(): React.ReactNode {
  const [feature] = usePageFeature();
  switch (feature) {
    case 'artifacts':
      return <Artifacts />;
    case 'presets':
      return <Presets />;
  }
}

export function App(): React.ReactElement {
  const child = usePageComponent();
  return <Layout>{child}</Layout>;
}
