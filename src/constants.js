import dotenv from 'dotenv';

/**
 * @name getEnv
 */
dotenv.config();
export const getEnv = {
    Token: process.env.TOKEN,
    Guild_ID: process.env.SERVER_ID,
    Bot_ID: Buffer.from(process.env.TOKEN.replace(/\..+/, ''), 'base64').toString(),
    Version: process.env.VERSION !== 'INSERT_VERSION_HERE' ? process.env.VERSION : '9.9.9',
};

