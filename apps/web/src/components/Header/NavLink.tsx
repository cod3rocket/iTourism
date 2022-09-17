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
          color="whiteAlpha.800"
          fontSize="1rem"
          _hover={{
            color: 'whiteAlpha.900',
            bg: 'whiteAlpha.100',
            px: '4px',
            py: '2px',
            borderRadius: '4px',
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
