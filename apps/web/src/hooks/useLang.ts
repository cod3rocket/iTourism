import { pt_br, en } from 'locales';
import { useRouter } from 'next/router';

function useLang() {
  const router = useRouter();

  const l = router.locale === 'pt-BR' ? pt_br : en;

  return { l };
}

export { useLang };
