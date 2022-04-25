#!/usr/bin/env python3
#-*- coding: UTF-8 -*-

import os
settings = {
# Force using MySQL
"user_database": 'mysql+pymysql://talebook:talebook@db:3306/talebook',
# Increase database pool size
"db_engine_args": {
    "echo": False,
    "pool_size": 50,
    "max_overflow": 50,
    "convert_unicode": True,
},
# Add builtin Douban API
'douban_apikey': '0df993c66c0c636e29ecbb5344252a4a',
'douban_baseurl': 'http://douban-api',
'douban_max_count': '4',
# Disable Google Analytics
'google_analytics_id': '',
}
