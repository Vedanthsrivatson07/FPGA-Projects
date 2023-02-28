                                                                        UART
UART (Universal Asynchronous Receiver-Transmitter) is a type of serial communication protocol used for transmitting and receiving data between two devices.The UART transmitter and receiver work together to enable communication between devices.

UART Transmitter Operation:
1.	The transmitter receives the data to be transmitted from the CPU (Central Processing Unit).
2.	The data is then converted into a series of binary bits and stored in a buffer.
3.	The transmitter generates a start bit to indicate the beginning of the transmission.
4.	The data bits are then transmitted one at a time, starting with the least significant bit (LSB).
5.	A parity bit may be transmitted after the data bits to provide error detection.
6.	Finally, the transmitter generates one or more stop bits to indicate the end of the transmission.


![Transmitter Simulation Output]
(https://user-images.githubusercontent.com/71482618/221912940-10c44249-4f1c-487a-aaf9-27893ec81385.png)


UART Receiver Operation:
1.	The receiver constantly monitors the incoming data line for the start bit.
2.	Once a start bit is detected, the receiver starts to receive the data bits.
3.	The receiver reads each data bit and stores it in a buffer until all the data bits have been received.
4.	The parity bit, if present, is also received and checked for errors.
5.	Finally, the stop bit(s) are received to indicate the end of the transmission.
The transmitter and receiver must use the same communication parameters, such as baud rate, parity, and number of data bits, to ensure successful communication. The UART protocol is commonly used for communication between microcontrollers, sensors, and other devices.                                                                      

![Receiver Simulation Output]
(https://user-images.githubusercontent.com/71482618/221913047-03a880ef-0189-4f3c-bcc9-eb24180bfb27.png)
