import { HiChevronDoubleRight, HiArchive } from 'react-icons/hi';

import {
  Flex,
  Heading,
  VStack,
  Text,
  Button,
  Box,
  Icon,
  SimpleGrid,
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

      <VStack maxH="100vh" w="100%">
        <Header />
        <Flex
          paddingY="8"
          w="1000px"
          flexDir={{ base: 'column', lg: 'row' }}
          justify="space-between"
          align="center"
        >
          <Flex
            w={{ base: '75%', lg: '50%' }}
            flexDir="column"
            align={{ base: 'center', lg: 'start' }}
          >
            <Flex gap="4" maxW="sm" flexDir="column">
              <Heading
                textAlign={{ base: 'center', lg: 'start' }}
                as="h1"
                fontSize="xxx-large"
                color="#ededed"
              >
                {l.heading.title}
              </Heading>
              <Text textAlign={{ base: 'center', lg: 'start' }} color="#a8a8b3">
                {l.heading.subtitle}
              </Text>
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
          </Flex>

          <Flex w="50%" align="center" justify="center">
            image
          </Flex>
        </Flex>
      </VStack>

      <Box w="100%" id="features" my="4">
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
              title={l.features.title.first}
              text={l.features.infoText.first}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.second}
              text={l.features.infoText.second}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.third}
              text={l.features.infoText.third}
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
              title={l.features.title.fourth}
              text={l.features.infoText.fourth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.fifth}
              text={l.features.infoText.fifth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
          </Flex>
        </VStack>
      </Box>

      <Box w="100%" id="contact">
        <VStack w="full" px="16">
          <CellPhone />
        </VStack>
      </Box>

      <Footer />
    </>
  );
}

export default Home;
