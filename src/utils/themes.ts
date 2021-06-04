import { lightTheme, darkTheme } from '~/renderer/constants/themes';

export const getTheme = (name: string) => {
  if (name === 'navigator-light') return lightTheme;
  else if (name === 'navigator-dark') return darkTheme;
  return lightTheme;
};
