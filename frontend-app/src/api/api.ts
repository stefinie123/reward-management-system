import { get } from "./http";
import { AxiosResponse } from "axios";
import { CardDetails, Reward } from "./types";

const qrGeneratorUrl = window.config.qrGeneratorApiUrl;

export const getCardDetails = async (userId: string) => {
  const url = `card-details/${userId}`;
  const response = await get(url);
  return response as AxiosResponse<CardDetails>;
};

export const getRewards = async () => {
  const url = `rewards`;
  const response = await get(url);
  return response as AxiosResponse<Reward[]>;
};

export const getRewardDetails = async (rewardId: number) => {
  const url = `rewards/${rewardId}`;
  const response = await get(url);
  return response as AxiosResponse<Reward>;
};

export const generateQR = async (cardNo: string, rewardName: string, totalPoints: number) => {
  const content = `${cardNo}-${rewardName}-${totalPoints}`;
  const headers = {
    'Accept': 'image/png',
  }
  const params = {
    content,
  }
  const url = `${qrGeneratorUrl}/qrcode`;
  const response = await get(url, params, true, headers, 'blob');
  return response as AxiosResponse<any>;
}
