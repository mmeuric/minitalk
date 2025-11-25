# Minitalk

Minitalk is a small communication program built entirely using **UNIX signals**.
The project consists of a client and a server that exchange data bit by bit, showcasing low-level inter-process communication in C.

## 🎯 Project Objectives

* Implement a client/server communication system using only **SIGUSR1** and **SIGUSR2**.
* Encode characters into signals and decode them back into text.
* Manage precise timing, synchronization, and message reconstruction.
* Ensure robustness: no crashes, no leaks, and clean error handling.
* Work with UNIX system calls, signal handling, and process IDs.

## 🛠️ How It Works

### **Server**

* Started first and prints its **PID**.
* Listens for incoming signals and reconstructs received messages.
* Can handle multiple messages in a row without restarting.

### **Client**

```bash
./client <server_pid> "<message>"
```

* Converts the message into bits and sends them to the server via signals.

### **Communication**

* Each bit is transmitted as one signal:

  * `SIGUSR1` → bit `0`
  * `SIGUSR2` → bit `1`

This requires tight control over timing and message flow.

## 🎁 Bonus Features

Implemented bonus requirements:

* **Acknowledgment system**: the server confirms each message by sending a signal back to the client.
* **Unicode support**: messages can contain multibyte characters.

## 📚 What I Learned

Through this project, I improved my understanding of:

* UNIX signal handling (`sigaction`, masks, queues, timing)
* IPC mechanisms without sockets or pipes
* Bitwise operations and binary encoding
* Synchronous/Asynchronous communication
* Writing robust, low-level C code with strict constraints

