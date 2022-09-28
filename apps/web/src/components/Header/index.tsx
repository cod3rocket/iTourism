import { HiChevronDown, HiOutlineTranslate } from 'react-icons/hi';
import { RiMenuLine } from 'react-icons/ri';

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
  IconButton,
  Drawer,
  DrawerOverlay,
  DrawerContent,
  DrawerHeader,
  DrawerCloseButton,
  DrawerBody,
  useBreakpointValue,
} from '@chakra-ui/react';
import { useHeaderDrawer } from 'hooks/useHeaderDrawer';
import { useLang } from 'hooks/useLang';
import NextLink from 'next/link';

import NavLink from './NavLink';

function Header() {
  const { l } = useLang();

  const isWideScreen = useBreakpointValue({
    base: false,
    lg: true,
  });

  const { isOpen, onClose, onOpen } = useHeaderDrawer();

  return (
    <>
      <Drawer isOpen={isOpen} onClose={onClose} size="full" closeOnEsc>
        <DrawerOverlay>
          <DrawerContent bg="#111213" p="4">
            <DrawerCloseButton color="#ededed" mt="6" />
            <Flex display="flex" flexDir="column" alignItems="center" mt="16%">
              <DrawerHeader color="#ededed">
                {l.header.drawer.navigation}
              </DrawerHeader>
              <DrawerBody color="#a8a8b3">
                <NextLink href="#features" passHref>
                  <Link
                    color="#a8a8b3"
                    fontSize="lg"
                    fontWeight="md"
                    href="#features"
                  >
                    {l.header.features}
                  </Link>
                </NextLink>
              </DrawerBody>
              <DrawerBody color="#a8a8b3">
                <NextLink href="#contact" passHref>
                  <Link
                    color="#a8a8b3"
                    fontSize="lg"
                    fontWeight="md"
                    href="#features"
                  >
                    {l.header.contact}
                  </Link>
                </NextLink>
              </DrawerBody>

              <DrawerHeader mt="8" color="#ededed">
                {l.header.drawer.languages}
              </DrawerHeader>
              <DrawerBody color="#a8a8b3">
                <NextLink href="/" locale="en">
                  <Link color="#a8a8b3" fontSize="lg" fontWeight="md" href="/">
                    en
                  </Link>
                </NextLink>
              </DrawerBody>
              <DrawerBody color="#a8a8b3">
                <NextLink href="/" locale="pt-BR">
                  <Link color="#a8a8b3" fontSize="lg" fontWeight="md" href="/">
                    pt-BR
                  </Link>
                </NextLink>
              </DrawerBody>
            </Flex>
          </DrawerContent>
        </DrawerOverlay>
      </Drawer>

      <Center
        w="100%"
        bg="rgba(18, 18, 20, 0.75)"
        borderBottom="1px"
        borderBottomColor="#323238"
      >
        <Flex px="8" align="center" justify="space-between" w="1000px" h="80px">
          <Box>
            <NextLink href="/" passHref>
              <Link
                _hover={{
                  outlineStyle: 'none',
                }}
                href="/"
              >
                <Heading color="#ededed">
                  <Text as="span" color="red.400" fontWeight="bold">
                    .
                  </Text>
                  iTourism
                </Heading>
              </Link>
            </NextLink>
          </Box>

          {isWideScreen ? (
            <>
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
            </>
          ) : (
            <IconButton
              aria-label="Open navigation bar"
              icon={<Icon as={RiMenuLine} color="#ededed" />}
              fontSize="xl"
              variant="unstyled"
              onClick={onOpen}
              mt="2"
            />
          )}
        </Flex>
      </Center>
    </>
  );
}

export default Header;
