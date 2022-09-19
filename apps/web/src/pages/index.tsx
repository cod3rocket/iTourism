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
import Head from 'next/head';
import NextImage from 'next/image';

function Home() {
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
              <Heading as="h1">
                Discover the Pioneer North with iTourism
              </Heading>
              <Text>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione
                modi, cumque eos, culpa neque, reprehenderit assumenda atque
                explicabo molestiae ullam unde iste aut a consequatur nesciunt
                dolor commodi quod aspernatur.
              </Text>
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
              <Heading as="h1">Display city utilities</Heading>
              <Flex flexDir="row" align="center" justify="space-between">
                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">Display attractions</Text>
                  <Text fontSize="lg">Display events</Text>
                </Box>

                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">Display public utilities</Text>
                  <Text fontSize="lg">Informations in real time</Text>
                </Box>
              </Flex>
            </Flex>
          </Flex>
        </VStack>

        <VStack w="full">
          <Flex paddingY="8" w="1240px" justify="space-around" align="center">
            <Flex gap="4" w="96" flexDir="column">
              <Heading as="h1">Extras</Heading>
              <Flex flexDir="row" align="center" justify="space-between">
                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">Integration with Google Maps</Text>
                  <Text fontSize="lg">Push notification</Text>
                </Box>

                <Box
                  display="flex"
                  flexDir="column"
                  alignContent="center"
                  justifyContent="space-between"
                  gap="4"
                >
                  <Text fontSize="lg">Filter attractions by types</Text>
                  <Text fontSize="lg">Viable in English and Portuguese</Text>
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
