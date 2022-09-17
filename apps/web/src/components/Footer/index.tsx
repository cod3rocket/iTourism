import { RiHeartFill } from 'react-icons/ri';

import { Center, Icon, Text, Link } from '@chakra-ui/react';

function Footer() {
  return (
    <Center
      display="flex"
      as="footer"
      w="full"
      bg="blackAlpha.900"
      p="8"
      flexDir="column"
      gap="2"
    >
      <Text color="white">
        Proudly made with <Icon as={RiHeartFill} color="red.500" /> by{' '}
        <Link href="https://github.com/henriq4" color="purple.200" isExternal>
          henriq4
        </Link>{' '}
        and{' '}
        <Link
          href="https://github.com/eduardoteles17"
          color="purple.200"
          isExternal
        >
          eduardoteles17
        </Link>
      </Text>
      <Text color="white">
        © 2022{' '}
        <Link
          href="https://github.com/cod3rocket"
          color="purple.200"
          isExternal
        >
          Cod3Rocket
        </Link>
        . All rights reserved.
      </Text>
    </Center>
  );
}

export default Footer;
