import { SiRocketdotchat } from 'react-icons/si';

import { Flex, Box, Text, Icon, Link } from '@chakra-ui/react';
import { useLang } from 'hooks/useLang';
import NextLink from 'next/link';

function CellPhone() {
  const { l } = useLang();

  return (
    <Flex
      w="1000px"
      h="md"
      paddingTop="8"
      mb="8"
      justify="center"
      align="center"
      borderBottom="8px"
      borderBottomColor="#1f1f1f"
    >
      <Flex
        bg="#0d0d0d"
        h="full"
        w="full"
        mx="80"
        px="4"
        flexDir="column"
        justify="space-between"
        align="center"
        border="8px"
        borderColor="#010101"
        borderTopRadius="32"
        borderBottom="none"
      >
        <Flex
          align="center"
          justify="center"
          bg="#010101"
          w="48"
          h="5"
          borderRadius="xl"
          borderTopRadius="revert"
        >
          <Box mt="-2" bg="#1f1f1f" h="20%" w="55%" borderRadius="xl" />
        </Flex>

        <Flex flexDir="column" align="center">
          <Text fontSize="8xl" color="#a8a8b3">
            17:01
          </Text>
          <Text letterSpacing="wide" fontSize="xs" color="#a8a8b3" mt="-8">
            {l.contact.description}
          </Text>
        </Flex>

        <Flex flexDir="column" justify="space-between" gap="4" w="full">
          <Flex p="3" bg="#e1e1e650" h="24" borderRadius="8" flexDir="column">
            <Flex
              w="full"
              flexDir="row"
              align="start"
              justify="space-between"
              mb="1"
            >
              <Flex flexDir="row" gap="2" align="center" justify="center">
                <Icon as={SiRocketdotchat} color="#a9abb7" />
                <Text letterSpacing="0.75px" fontSize="sm" color="#a8a8b3">
                  iTourism
                </Text>
              </Flex>
              <Text fontSize="xs" color="#a8a8b3">
                {l.contact.notificationTime.first}
              </Text>
            </Flex>
            <Text fontSize="sm" noOfLines={2} color="#ededed">
              {l.contact.notificationMessage}{' '}
              <NextLink href="https://github.com/cod3rocket">
                <Link href="https://github.com/cod3rocket">Cod3Rocket</Link>
              </NextLink>
              .
            </Text>
          </Flex>

          <Flex p="3" bg="#e1e1e650" h="12" borderTopRadius="8">
            <Flex
              w="full"
              flexDir="row"
              align="start"
              justify="space-between"
              mb="1"
            >
              <Flex flexDir="row" gap="2" align="center" justify="center">
                <Icon as={SiRocketdotchat} color="#a9abb7" />
                <Text letterSpacing="0.75px" fontSize="sm" color="#a8a8b3">
                  iTourism
                </Text>
              </Flex>
              <Text fontSize="xs" color="#a8a8b3">
                {l.contact.notificationTime.second}
              </Text>
            </Flex>
          </Flex>
        </Flex>
      </Flex>
    </Flex>
  );
}

export { CellPhone };
