import { ChakraProvider } from '@chakra-ui/react';
import { HeaderDrawerContextProvider } from 'contexts/HeaderDrawerContext';
import type { AppProps } from 'next/app';
import { theme } from 'styles/themes';

function MyApp({ Component, pageProps }: AppProps) {
  return (
    <ChakraProvider theme={theme}>
      <HeaderDrawerContextProvider>
        <Component {...pageProps} />
      </HeaderDrawerContextProvider>
    </ChakraProvider>
  );
}

export default MyApp;
