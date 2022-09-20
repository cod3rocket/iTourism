import { GrLanguage } from 'react-icons/gr';
import { HiChevronDown } from 'react-icons/hi';

import {
  Menu,
  MenuButton,
  MenuList,
  MenuItem,
  Box,
  Center,
  Flex,
  Heading,
  Link,
  Text,
  Icon,
  Button,
} from '@chakra-ui/react';
import { en, pt_br } from 'locales';
import NextLink from 'next/link';
import { useRouter } from 'next/router';

import NavLink from './NavLink';

function Header() {
  const router = useRouter();

  const l = router.locale === 'pt-BR' ? pt_br : en;

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
          <NavLink title={l.header.features} href="#features" />
          <NavLink title={l.header.contact} href="#contact" />
        </Flex>

        <Menu>
          <MenuButton as={Button} rightIcon={<Icon as={HiChevronDown} />}>
            <Icon as={GrLanguage} />
          </MenuButton>
          <MenuList>
            <NextLink href="/" locale="pt-BR">
              <MenuItem>pt-BR</MenuItem>
            </NextLink>
            <NextLink href="/" locale="en">
              <MenuItem>en</MenuItem>
            </NextLink>
          </MenuList>
        </Menu>
      </Flex>
    </Center>
  );
}

export default Header;
