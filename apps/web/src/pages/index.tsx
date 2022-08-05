import { GoMarkGithub } from 'react-icons/go';
import { MdDarkMode, MdLightMode } from 'react-icons/md';
import { RiHeartFill } from 'react-icons/ri';

import {
  ButtonGroup,
  Center,
  Heading,
  Icon,
  IconButton,
  Link,
  Progress,
  Text,
  useColorMode,
  VStack,
} from '@chakra-ui/react';
import Head from 'next/head';

function Home() {
  const colorMode = useColorMode();

  const isDarkTheme = colorMode.colorMode === 'dark';

  return (
    <VStack w="full" minH="100vh" justifyContent="space-between">
      <Head>
        <title>iTurism</title>
      </Head>
      <ButtonGroup
        as="header"
        w="full"
        p={{
          base: '4',
          md: '8',
        }}
        justifyContent="end"
        variant="ghost"
        size="lg"
      >
        <IconButton
          aria-label="toggle theme"
          icon={<Icon as={isDarkTheme ? MdLightMode : MdDarkMode} />}
          onClick={colorMode.toggleColorMode}
        />
        <IconButton
          as="a"
          icon={<Icon as={GoMarkGithub} />}
          aria-label="Github"
          href="https://github.com/cod3rocket/iTourism"
          target="_blank"
        />
      </ButtonGroup>
      <Center as="main" w="full">
        <VStack>
          <Heading>Hello World!</Heading>
          <Text>News coming soon...</Text>
          <Progress w="full" h="2" size="xl" value={64} isAnimated hasStripe />
        </VStack>
      </Center>
      <Center
        as="footer"
        w="full"
        bg={isDarkTheme ? 'gray.600' : 'gray.200'}
        p="8"
      >
        <Text>
          Proudly made with <Icon as={RiHeartFill} color="red.500" /> by{' '}
          <Link
            href="https://github.com/henriq4"
            color={isDarkTheme ? 'purple.200' : 'purple.500'}
            isExternal
          >
            henriq4
          </Link>{' '}
          and{' '}
          <Link
            href="https://github.com/eduardoteles17"
            color={isDarkTheme ? 'purple.200' : 'purple.500'}
            isExternal
          >
            eduardoteles17
          </Link>
        </Text>
      </Center>
    </VStack>
  );
}

export default Home;
