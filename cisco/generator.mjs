
import { authenticator } from 'otplib';

async function run() 
{
	const secret = 'secret';
	const token = authenticator.generate( secret );
	console.log(token);
}
run();
