import { cloneElement, ReactElement } from 'react';

import Link, { LinkProps } from 'next/link';
import { useRouter } from 'next/router';

interface IActiveLinkPorps extends LinkProps {
  children: ReactElement;
}

export function ActiveLink({ children, ...rest }: IActiveLinkPorps) {
  let isActive = false;
  const { asPath } = useRouter();

  if (asPath === rest.href || asPath === rest.as) {
    isActive = true;
  }

  return (
    <Link {...rest}>
      {cloneElement(children, {
        color: isActive ? 'red.400' : 'gray.900',
      })}
    </Link>
  );
}
