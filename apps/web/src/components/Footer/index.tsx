import { RiHeartFill } from 'react-icons/ri';

import { Center, Icon, Text, Link } from '@chakra-ui/react';
import { useLang } from 'hooks/useLang';

function Footer() {
  const { l } = useLang();

  return (
    <Center
      display="flex"
      justifyContent="space-evenly"
      as="footer"
      w="full"
      bg="#3c3c4225"
      p="8"
      flexDir="column"
      gap="2"
      minH="32"
    >
      <Text
        color="#a8a8b3"
        fontSize={{ base: 'sm', sm: 'md' }}
        textAlign="center"
      >
        {l.footer.accomplishment.first}{' '}
        <Icon as={RiHeartFill} color="red.500" />{' '}
        {l.footer.accomplishment.second}{' '}
        <Link href="https://github.com/henriq4" color="#edededdd" isExternal>
          henriq4
        </Link>{' '}
        {l.footer.accomplishment.third}{' '}
        <Link
          href="https://github.com/eduardoteles17"
          color="#edededdd"
          isExternal
        >
          eduardoteles17
        </Link>
      </Text>
      <Text
        mb="-4"
        fontSize={{ base: 'xs', sm: 'sm' }}
        color="#a8a8b3"
        textAlign="center"
      >
        © 2022{' '}
        <Link href="https://github.com/cod3rocket" color="#edededdd" isExternal>
          Cod3Rocket
        </Link>
        . {l.footer.copyright}
      </Text>
    </Center>
  );
}

export default Footer;
