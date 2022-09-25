import { useContext } from 'react';

import { HeaderDrawerContext } from 'contexts/HeaderDrawerContext';

function useHeaderDrawer() {
  return useContext(HeaderDrawerContext);
}

export { useHeaderDrawer };
