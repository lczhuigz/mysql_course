# MySQL 数据库课程实验项目

本课程项目包含 MySQL 相关课程的课件资源、各次实验（Lab）的 SQL 脚本以及实验报告。

## 项目结构

```
mysql_course/
├── cource_resources/      # 课程资源
│   ├── db_school.sql      # 课程示例数据库脚本
│   └── silde/             # 各章课件（PPT）
├── labs/                  # 实验代码
│   ├── lab00/             # 实验 0：数据库及表基本操作
│   ├── lab01/             # 实验 1：单表查询
│   ├── lab02/             # 实验 2：多表查询
│   ├── lab03/             # 实验 3：数据表索引与约束
│   ├── lab04/             # 实验 4：数据库表维护
│   └── lab_report/        # 实验报告
│       ├── src_report/    # 报告模板
│       └── finished_report/ # 完成的报告
└── README.md
```

## 实验内容

| 实验 | 目录 | 内容 |
|------|------|------|
| Lab00 | `labs/lab00/` | 数据库与表的基本操作（建库、建表、增删改） |
| Lab01 | `labs/lab01/` | 单表查询 |
| Lab02 | `labs/lab02/` | 多表查询（连接、嵌套） |
| Lab03 | `labs/lab03/` | 数据表索引与约束 |
| Lab04 | `labs/lab04/` | 表的维护（INSERT / UPDATE / DELETE、索引约束练习） |

## 使用说明

1. 安装 MySQL Server 并启动服务。
2. 使用 `mysql.exe` 或 Navicat 等客户端连接数据库。
3. 依次执行各 `labs/labXX/labXX.sql` 脚本完成对应实验。
4. `cource_resources/db_school.sql` 为完整示例数据库脚本，可用于恢复教材示例环境。
5. 实验报告位于 `labs/lab_report/finished_report/`，其中 `submit/` 目录为最终提交版本。

## 环境

- 操作系统：Windows 11
- 数据库：MySQL 8.x
- 客户端：Navicat / mysql 命令行