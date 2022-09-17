import { Box, Center, Flex, Heading, Link, Text } from '@chakra-ui/react';
import NextLink from 'next/link';

import NavLink from './NavLink';

function Header() {
  return (
    <Center w="100%" bg="blackAlpha.900">
      <Flex align="center" justify="space-between" w="1240px">
        <Box>
          <NextLink href="/" passHref>
            <Link
              _hover={{
                outlineStyle: 'none',
              }}
              href="/"
            >
              <Heading color="whiteAlpha.900">
                <Text as="span" color="red.400" fontWeight="bold">
                  .
                </Text>
                iTourism
              </Heading>
            </Link>
          </NextLink>
        </Box>

        <Flex as="nav" flexDir="row" p="4">
          <NavLink title="Features" href="#features" />
          <NavLink title="Contact" href="#contact" />
        </Flex>
      </Flex>
    </Center>
  );
}

export default Header;
