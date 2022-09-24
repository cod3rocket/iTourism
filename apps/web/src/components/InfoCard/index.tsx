import { IconType } from 'react-icons';

import { Flex, Icon, Heading, Text } from '@chakra-ui/react';

interface InfoCardProps {
  icon: IconType;
  title: string;
  text: string;
}

function InfoCard({ icon, title, text }: InfoCardProps) {
  return (
    <Flex minH="32" flexDir="column" align="center" justify="center">
      <Icon fontSize="4xl" as={icon} color="whiteAlpha.900" />
      <Heading my="2" fontSize="lg" color="#ededed">
        {title}
      </Heading>
      <Text
        maxInlineSize="xs"
        fontSize="md"
        color="#a8a8b3"
        textAlign="justify"
      >
        {text}
      </Text>
    </Flex>
  );
}

export { InfoCard };
