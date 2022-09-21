import { HiChevronDown, HiOutlineTranslate } from 'react-icons/hi';

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
import { useLang } from 'hooks/useLang';
import NextLink from 'next/link';

import NavLink from './NavLink';

function Header() {
  const { l } = useLang();

  return (
    <Center
      w="100%"
      bg="rgba(18, 18, 20, 0.75)"
      borderBottom="1px"
      borderBottomColor="borders"
    >
      <Flex align="center" justify="space-between" w="1200px" h="80px">
        <Box>
          <NextLink href="/" passHref>
            <Link
              _hover={{
                outlineStyle: 'none',
              }}
              href="/"
            >
              <Heading color="white">
                <Text as="span" color="red.400" fontWeight="bold">
                  .
                </Text>
                iTourism
              </Heading>
            </Link>
          </NextLink>
        </Box>

        <Flex as="nav" flexDir="row">
          <NavLink title={l.header.features} href="#features" />
          <NavLink title={l.header.contact} href="#contact" />
        </Flex>

        <Menu>
          <MenuButton
            aria-label="Select language"
            as={Button}
            _hover={{ bg: '#121214' }}
            _expanded={{ bg: '#121214' }}
            backgroundColor="transparent"
            rightIcon={<Icon as={HiChevronDown} color="#ededed" />}
          >
            <Icon fontSize="xl" as={HiOutlineTranslate} color="#ededed" />
          </MenuButton>
          <MenuList
            border="1px"
            borderColor="#444"
            color="#ededed"
            bgColor="#131214"
          >
            <NextLink href="/" locale="pt-BR">
              <MenuItem
                _hover={{ bgColor: '#3c3c4220' }}
                _focus={{ bgColor: '#3c3c4220' }}
              >
                pt-BR
              </MenuItem>
            </NextLink>
            <NextLink href="/" locale="en">
              <MenuItem
                _hover={{ bgColor: '#3c3c4220' }}
                _focus={{ bgColor: '#3c3c4220' }}
              >
                en
              </MenuItem>
            </NextLink>
          </MenuList>
        </Menu>
      </Flex>
    </Center>
  );
}

export default Header;
