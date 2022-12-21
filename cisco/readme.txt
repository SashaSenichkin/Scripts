0. download cisco https://www.firewall.cx/downloads/cisco-tools-a-applications/199-cisco-anyconnect-secure-mobility-client-v4-9-0195.html
1. поставить в .login_info свой логин и пароль(дважды)
2. в generator.mjs - надо кинуть свой секрет из генератора opt. можно выгрузить qr код и распарсить. Otp генерируется тут otp.nexign.com.
3. запустить команду node generator.mjs и проверить код, с приходящим по обычному пути (в приложение или расширение)
4. каждый день запускать ciscoLogin.bat, он допишет в .login_info opt код, залогинится и должен потом очистить этот код из .login_info
5. после нескольких дней, если логин проходит хорошо - можно удалить pause из ciscoLogin.bat
