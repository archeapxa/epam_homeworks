## Module 3 Linux

### Task description

![Task schema](/3_linux%20net/Task-schema.jpg?raw=true)

Host – це комп’ютер, на якому запущений Virtual Box;

Server_1 – Віртуальна машина, на якій розгорнуто ОС Linux. Int1 цієї машини в режимі «Мережевий міст» підключений до мережі Net1, тобто знаходиться в адресному просторі домашньої мережі. IP-адреса Int1 встановлюється статично відповідно до адресного простору, наприклад 192.168.1.200/24. Інтерфейси Int2 та Int3 відповідно підключено в режимі «Внутрішня мережа» до мереж Net2 та Net3.

Client_1 та Client_2 – Віртуальні машини, на яких розгорнуто ОС Linux (бажано різні дистрибутиви, наприклад Ubuntu та CentOS). Інтерфейси підключені в режимі «Внутрішня мережа» до мереж Net2, Net3 та Net4 як показано на рисунку 1.

Адреса мережі Net2 – 10.Y.D.0/24, де Y – дві останні цифри з вашого року народження, D – дата народження.

Адреса мережі Net3 – 10.M.Y.0/24, де M – номер місяця народження.

Адреса мережі Net4 – 172.16.D.0/24.

### Task solving schema

#### Y=93, M=3, D=25 (25.03.93)

![Task my schema](/3_linux%20net/Schema.jpg?raw=true)

#### 1. На Server_1 налаштувати статичні адреси на всіх інтерфейсах.

![server netplan statics](/3_linux%20net/Screenshots/1-netplan-server.JPG?raw=true)
![server ip addr](/3_linux%20net/Screenshots/2-server-ip-addr.JPG?raw=true)

#### 2. На Server_1 налаштувати DHCP сервіс, який буде конфігурувати адреси Int1 Client_1 та Client_2

![server dhcp server](/3_linux%20net/Screenshots/3-dhcp-conf.JPG?raw=true)
![server dhcp list](/3_linux%20net/Screenshots/4-dhcp-list.JPG?raw=true)
