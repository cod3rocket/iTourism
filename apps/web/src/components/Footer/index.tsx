import { RiHeartFill } from 'react-icons/ri';

import { Center, Icon, Text, Link } from '@chakra-ui/react';
import { pt_br, en } from 'locales';
import { useRouter } from 'next/router';

function Footer() {
  const router = useRouter();

  const l = router.locale === 'pt-BR' ? pt_br : en;

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
        {l.footer.accomplishment.first}{' '}
        <Icon as={RiHeartFill} color="red.500" />{' '}
        {l.footer.accomplishment.second}{' '}
        <Link href="https://github.com/henriq4" color="purple.200" isExternal>
          henriq4
        </Link>{' '}
        {l.footer.accomplishment.third}{' '}
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
        . {l.footer.copyright}
      </Text>
    </Center>
  );
}

export default Footer;
