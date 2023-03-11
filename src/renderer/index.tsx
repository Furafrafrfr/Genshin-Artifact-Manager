import '@fontsource/roboto/300.css';
import '@fontsource/roboto/400.css';
import '@fontsource/roboto/500.css';
import '@fontsource/roboto/700.css';
import { createRoot } from 'react-dom/client';
import { CssBaseline } from '@mui/material';
import { RecoilRoot } from 'recoil';
import { App } from './components/pages/App';

(() => {
  const domRoot = document.getElementById('react-root');
  const root = createRoot(domRoot);
  root.render(
    <>
      <CssBaseline />
      <RecoilRoot>
        <App />
      </RecoilRoot>
    </>
  );
})();
