# Asosiy Python image tanlaymiz
FROM python:3.9-slim

# Ishchi katalogni o'rnatamiz
WORKDIR /app

# Avval kerakli fayllarni nusxalaymiz
COPY . .

# Zarur kutubxonalarni o'rnatamiz
RUN pip install --no-cache-dir -r requirements.txt

# Agar requirements.txt yo'q bo'lsa, kerakli kutubxonalarni qo'lda ko'rsatishingiz mumkin
# RUN pip install --no-cache-dir flask python-telegram-bot sqlite3

# Dasturni ishga tushirish buyrug'i
CMD ["python", "bot.py"]