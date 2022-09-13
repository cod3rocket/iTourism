import { Box, Flex, Heading, Link, Text } from '@chakra-ui/react';
import NextLink from 'next/link';

import { ActiveLink } from './ActiveLink';

function Header() {
  return (
    <Flex align="center" justify="space-between" w="1240px">
      <Box>
        <NextLink href="/" passHref>
          <Link href="ss">
            <Heading>
              <Text as="span" color="red.400" fontWeight="bold">
                .
              </Text>
              iTourism
            </Heading>
          </Link>
        </NextLink>
      </Box>

      <Flex as="nav" flexDir="row">
        <Box p="4">
          <ActiveLink href="/contact" passHref>
            <Link href="ss">Contato</Link>
          </ActiveLink>
        </Box>
        <Box p="4">
          <ActiveLink href="/roadmap" passHref>
            <Link href="ss">Roadmap</Link>
          </ActiveLink>
        </Box>
      </Flex>
    </Flex>
  );
}

export default Header;
