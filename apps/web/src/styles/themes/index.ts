import { extendTheme, ThemeConfig } from '@chakra-ui/react';

import { fonts } from './fonts';
import { styles } from './styles';

const theme: any = extendTheme({
  initialColorMode: 'dark',
  useSystemColorMode: false,
  styles,
  fonts,
} as ThemeConfig);

export { theme };
