import asyncio
from aiosmtpd.controller import Controller
from aiosmtpd.handlers import Message

class PrintHandler(Message):
    def handle_message(self, message):
        print(f"Received message from {message['from']}")
        print(f"To: {message['to']}")
        print(f"Subject: {message['subject']}")
        print(f"Body:\n{message.get_payload()}")

if __name__ == "__main__":
    handler = PrintHandler()
    controller = Controller(handler, hostname="", port=25)
    controller.start()

    try:
        asyncio.get_event_loop().run_forever()
    except KeyboardInterrupt:
        pass
    finally:
        controller.stop()
