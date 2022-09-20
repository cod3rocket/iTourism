import { HiChevronDoubleRight } from 'react-icons/hi';

import {
  Flex,
  Heading,
  VStack,
  Text,
  Button,
  Box,
  Icon,
} from '@chakra-ui/react';
import Footer from 'components/Footer';
import Header from 'components/Header';
import { useLang } from 'hooks/useLang';
import Head from 'next/head';
import NextImage from 'next/image';

function Home() {
  const { l } = useLang();

  return (
    <>
      <Head>
        <title>iTourism</title>
      </Head>
      <VStack maxH="100vh" w="full">
        <Header />
        <Flex paddingY="8" w="1240px" justify="space-around" align="center">
          <Box>
            <Flex gap="4" w="96" flexDir="column">
              <Heading as="h1">{l.heading.title}</Heading>
              <Text>{l.heading.subtitle}</Text>
            </Flex>
            <Button
              mt="4"
              display="flex"
              justifyContent="start"
              alignItems="center"
              gap="2"
              _hover={{
                gap: '4',
              }}
            >
              Download
              <Icon as={HiChevronDoubleRight} />
            </Button>
          </Box>

          <Box>
            <NextImage src="/assets/example7.png" width="348" height="457" />
          </Box>
        </Flex>
      </VStack>

      <Box as="section" id="features">
        <VStack w="full">
          <Flex paddingY="8" w="1240px" justify="space-around" align="center">
            <Box>
              <NextImage src="/assets/example7.png" width="348" height="457" />
            </Box>

            <Flex gap="4" w="96" flexDir="column">
              <Heading as="h1">{l.features.title.utilities}</Heading>
              <Flex flexDir="row" align="center" justify="space-between">
                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">{l.features.attractions}</Text>
                  <Text fontSize="lg">{l.features.events}</Text>
                </Box>

                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">{l.features.public_utilities}</Text>
                  <Text fontSize="lg">{l.features.real_time}</Text>
                </Box>
              </Flex>
            </Flex>
          </Flex>
        </VStack>

        <VStack w="full">
          <Flex paddingY="8" w="1240px" justify="space-around" align="center">
            <Flex gap="4" w="96" flexDir="column">
              <Heading as="h1">{l.features.title.extras}</Heading>
              <Flex flexDir="row" align="center" justify="space-between">
                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">{l.features.maps}</Text>
                  <Text fontSize="lg">{l.features.push_notification}</Text>
                </Box>

                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">{l.features.filter}</Text>
                  <Text fontSize="lg">{l.features.lang_support}</Text>
                </Box>
              </Flex>
            </Flex>
            <Box>
              <NextImage src="/assets/example7.png" width="348" height="457" />
            </Box>
          </Flex>
        </VStack>
      </Box>

      <Footer />
    </>
  );
}

export default Home;
