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

      <VStack w="100%">
        <Header />
        <Flex
          px="8"
          pt="12"
          pb="4"
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

          <Flex
            w="50%"
            h="326"
            align="center"
            justify="center"
            overflow="hidden"
            mt={{ base: '16', lg: '0' }}
          >
            <NextImage
              src="/assets/mock_app_image.png"
              width="429"
              height="326"
            />
          </Flex>
        </Flex>
      </VStack>

      <Box w="100%" id="features" my="2">
        <VStack w="full">
          <SimpleGrid
            my={{ base: '2', lg: '16' }}
            px="8"
            w="1000px"
            columns={{ base: 1, lg: 3 }}
            gap={{ base: '12', lg: '16' }}
            justifyContent="space-between"
            alignItems="center"
          >
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
            <InfoCard
              icon={HiArchive}
              title={l.features.title.sixth}
              text={l.features.infoText.sixth}
            />
          </SimpleGrid>
        </VStack>
      </Box>

      <Box w="100%" id="contact">
        <VStack w="full" px="8">
          <CellPhone />
        </VStack>
      </Box>

      <Footer />
    </>
  );
}

export default Home;
