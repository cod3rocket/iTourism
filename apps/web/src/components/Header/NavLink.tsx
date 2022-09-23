import { Box, Link } from '@chakra-ui/react';
import NextLink from 'next/link';

interface INavLinkProps {
  title: string;
  href: string;
}

function NavLink({ title, href }: INavLinkProps) {
  return (
    <Box p="2">
      <NextLink href={href} passHref>
        <Link
          color="#a8a8b3"
          fontSize="lg"
          fontWeight="md"
          px="2"
          py="1"
          borderRadius="4px"
          _hover={{
            color: 'white',
            bgColor: '#29292e',
          }}
          href={href}
        >
          {title}
        </Link>
      </NextLink>
    </Box>
  );
}

export default NavLink;
