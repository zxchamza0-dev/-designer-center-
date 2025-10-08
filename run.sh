#!/bin/bash

# تشغيل لوحة تحكم المصمم
echo "🚀 بدء تشغيل لوحة تحكم المصمم..."

# التحقق من تثبيت المتطلبات
if [ ! -d "venv" ]; then
    echo "📦 إنشاء البيئة الافتراضية..."
    python3 -m venv venv
fi

# تفعيل البيئة الافتراضية
source venv/bin/activate

# تثبيت المتطلبات
echo "📥 تثبيت المتطلبات..."
pip install -r requirements.txt

# تشغيل التطبيق
echo "✅ تشغيل التطبيق على http://127.0.0.1:8080"
python3 app.py
