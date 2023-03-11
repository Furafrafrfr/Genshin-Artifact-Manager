import React, { useState, useCallback } from 'react';
import {
  AppBar,
  Box,
  Drawer,
  IconButton,
  List,
  ListItem,
  ListItemButton,
  Toolbar,
  Typography,
} from '@mui/material';
import { Menu } from '@mui/icons-material';
import { useFeatureText, usePageFeature } from '../states/pageFeature';

export function Layout({
  children,
}: {
  children: React.ReactNode;
}): React.ReactElement {
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const closeDrawer = useCallback(() => setIsDrawerOpen(false), []);
  const openDrawer = useCallback(() => setIsDrawerOpen(true), []);

  const [feature, setFeature] = usePageFeature();
  const text = useFeatureText();
  const moveToArtifacts = useCallback(() => {
    setFeature('artifacts');
    closeDrawer();
  }, []);
  const moveToPresets = useCallback(() => {
    setFeature('presets');
    closeDrawer();
  }, []);

  return (
    <>
      <Box>
        <AppBar position="static">
          <Toolbar>
            <IconButton
              onClick={openDrawer}
              size="large"
              edge="start"
              color="inherit"
              aria-label="menu"
              sx={{ mr: 2 }}
            >
              <Menu />
            </IconButton>
            <Typography component="div" variant="h6" sx={{ flexGrow: 1 }}>
              {text}
            </Typography>
          </Toolbar>
        </AppBar>
        <Box mx={3} my={2}>
          {children}
        </Box>
      </Box>
      <Drawer open={isDrawerOpen} onClose={closeDrawer}>
        <List>
          <ListItem>
            <ListItemButton onClick={moveToArtifacts}>
              <Typography>聖遺物</Typography>
            </ListItemButton>
          </ListItem>
          <ListItem>
            <ListItemButton onClick={moveToPresets}>
              <Typography>プリセット</Typography>
            </ListItemButton>
          </ListItem>
        </List>
      </Drawer>
    </>
  );
}
