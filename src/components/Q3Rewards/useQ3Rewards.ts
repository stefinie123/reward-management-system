/**********************************************************************
 *
 *   Component hook generated by Quest
 *
 *   Code Logic for the component goes in this hook
 *   To setup bindings that use the data here or call the functions here, use the Quest editor
 *   Do not change the name of the hook
 *
 *   For help and further details refer to: https://www.quest.ai/docs
 *
 *
 **********************************************************************/

import React from 'react';
import useQ3RewardsResponsiveSize from './useQ3RewardsResponsiveSize';

/* These are the possible values for the current variant. Use this to change the currentVariant dynamically.
Please don't modify */
const variantOptions = {
  ScreenDesktop: 'ScreenDesktop',
  ScreenMobile: 'ScreenMobile',
};

const useQ3Rewards = () => {
  const [currentVariant, setCurrentVariant] = React.useState<string>(
    variantOptions['ScreenDesktop']
  );

  const breakpointsVariant = useQ3RewardsResponsiveSize();

  React.useEffect(() => {
    if (breakpointsVariant !== currentVariant) {
      setCurrentVariant(breakpointsVariant);
    }
  }, [breakpointsVariant]);

  const data: any = { currentVariant };

  const fns: any = { setCurrentVariant };

  return { data, fns };
};

export default useQ3Rewards;
