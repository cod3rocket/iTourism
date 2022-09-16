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
          color="gray.700"
          _hover={{
            color: 'gray.800',
            bg: 'gray.100',
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
