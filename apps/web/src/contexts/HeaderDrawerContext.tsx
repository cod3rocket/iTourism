import { createContext, ReactNode, useEffect } from 'react';

import { useDisclosure, UseDisclosureReturn } from '@chakra-ui/react';
import { useRouter } from 'next/router';

type HeaderDrawerData = UseDisclosureReturn;

const HeaderDrawerContext = createContext({} as HeaderDrawerData);

interface HeaderDrawerContextProviderData {
  children: ReactNode;
}

function HeaderDrawerContextProvider({
  children,
}: HeaderDrawerContextProviderData) {
  const disclosure = useDisclosure();

  const { asPath } = useRouter();

  useEffect(() => {
    disclosure.onClose();
  }, [asPath]);

  return (
    <HeaderDrawerContext.Provider value={disclosure}>
      {children}
    </HeaderDrawerContext.Provider>
  );
}

export { HeaderDrawerContextProvider, HeaderDrawerContext };
