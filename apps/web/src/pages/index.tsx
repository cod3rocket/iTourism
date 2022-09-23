import { HiChevronDoubleRight, HiArchive } from 'react-icons/hi';

import {
  Flex,
  Heading,
  VStack,
  Text,
  Button,
  Box,
  Icon,
} from '@chakra-ui/react';
import { CellPhone } from 'components/CellPhone';
import Footer from 'components/Footer';
import Header from 'components/Header';
import { InfoCard } from 'components/InfoCard';
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
        <Flex paddingY="8" w="1000px" justify="space-between" align="center">
          <Box>
            <Flex gap="4" maxW="sm" flexDir="column">
              <Heading as="h1" fontSize="xxx-large" color="#ededed">
                {l.heading.title}
              </Heading>
              <Text color="#a8a8b3">{l.heading.subtitle}</Text>
            </Flex>
            <Box w="min-content">
              <Button
                colorScheme="blackAlpha"
                pl="-4"
                pr="-4"
                bgColor="transparent"
                mt="4"
                display="flex"
                justifyContent="center"
                alignItems="center"
                gap="2"
                opacity="0.8"
                color="#ededed"
                _hover={{
                  opacity: '1',
                }}
              >
                <Text fontSize="xl">Download</Text>
                <Icon fontSize="lg" as={HiChevronDoubleRight} />
              </Button>
              <Box h="1px" w="full" bgColor="#323238" />
            </Box>
          </Box>
          <Box>
            <NextImage src="/assets/example7.png" width="540" height="457" />
          </Box>
        </Flex>
      </VStack>

      <Box id="features" my="4">
        <VStack w="full">
          <Flex
            paddingTop="16"
            paddingBottom="8"
            w="1000px"
            gap="16"
            justify="space-between"
            align="center"
          >
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
          </Flex>
        </VStack>

        <VStack w="full">
          <Flex
            paddingTop="8"
            paddingBottom="16"
            w="1000px"
            gap="16"
            justify="space-between"
            align="center"
          >
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
            <InfoCard
              icon={HiArchive}
              title="some text"
              text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum
        dolor sit amet consectetur adipisicing elit."
            />
          </Flex>
        </VStack>
      </Box>

      <Box id="contact">
        <VStack w="full" px="16">
          <CellPhone />
        </VStack>
      </Box>

      <Footer />
    </>
  );
}

export default Home;
