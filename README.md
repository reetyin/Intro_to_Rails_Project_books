# BookStore - Rails Intro Project

一个完整的Ruby on Rails图书管理系统，展示了Rails框架的核心功能和最佳实践。

## 项目概览

BookStore是一个Web应用程序，允许用户浏览、搜索和管理图书收藏。该应用包含了图书、作者、分类和评论的完整管理系统。

## 技术栈

- **Ruby on Rails** 8.0.2
- **SQLite** 数据库
- **Bootstrap 5.3** + SASS 用于响应式UI
- **Faker** 生成测试数据
- **HTTParty** 集成Open Library API
- **Kaminari** 实现分页功能

## 项目要求实现情况

### ✅ 1. 数据库设计与数据源 (25分)
- [x] 1.1 设计数据库架构 (5分)
- [x] 1.2 从CSV文件导入数据 (5分)
- [x] 1.3 从Faker生成数据 (5分)
- [x] 1.4 从Open Library API获取数据 (5分)
- [x] 1.5 手动输入数据 (2.5分)
- [x] 1.6 数据总量超过200条记录 (2.5分)

**当前数据量:** 776条记录
- 分类: 10个
- 作者: 50个
- 图书: 142本
- 评论: 574条

### ✅ 2. 导航与菜单系统 (10分)
- [x] 2.1 主导航菜单 (5分)
- [x] 2.2 响应式导航设计 (5分)

### ✅ 3. 数据导航与详情页面 (30分)
- [x] 3.1 分类列表页面 (5分)
- [x] 3.2 作者列表页面 (5分)
- [x] 3.3 图书列表页面 (5分)
- [x] 3.4 图书详情页面 (5分)
- [x] 3.5 层级导航 (分类→图书，作者→图书) (5分)
- [x] 3.6 关联数据显示 (5分)

### ✅ 4. 搜索与过滤功能 (15分)
- [x] 4.1 图书搜索功能 (10分)
- [x] 4.2 分类和作者过滤 (5分)

### ✅ 5. HTML验证与Bootstrap样式 (15分)
- [x] 5.1 有效的HTML结构 (5分)
- [x] 5.2 Bootstrap响应式设计 (5分)
- [x] 5.3 自定义CSS样式 (5分)

### ✅ 6. Git版本控制 (5分)
- [x] 6.1 定期Git提交 (20+次提交) (2.5分)
- [x] 6.2 完整项目源代码 (2.5分)

## 数据模型

### Category (分类)
- `name`: 分类名称
- `description`: 描述

### Author (作者)
- `name`: 作者姓名
- `birth_date`: 出生日期
- `bio`: 传记

### Book (图书)
- `title`: 书名
- `isbn`: ISBN号码
- `publication_date`: 出版日期
- `description`: 描述
- `category_id`: 关联分类
- `author_id`: 关联作者

### Review (评论)
- `rating`: 评分 (1-5)
- `comment`: 评论内容
- `reviewer_name`: 评论者姓名
- `book_id`: 关联图书

## 功能特性

### 🏠 首页
- 显示统计信息概览
- 最新图书展示
- 快速导航入口

### 📚 图书管理
- 分页浏览所有图书
- 按标题、作者或分类搜索
- 详细的图书信息页面
- 评论系统

### 👥 作者管理
- 作者列表和详情页面
- 查看作者的所有作品
- 作者传记信息

### 📂 分类管理
- 分类层级浏览
- 按分类筛选图书
- 分类统计信息

### 🔍 搜索功能
- 全文搜索图书标题
- 按作者过滤
- 按分类过滤
- 分页显示搜索结果

### 💬 评论系统
- 为图书添加评论
- 1-5星评分系统
- 评论者信息显示

## 安装与运行

### 系统要求
- Ruby 3.0+
- Rails 8.0+
- SQLite 3

### 安装步骤

1. 克隆项目
```bash
git clone [项目URL]
cd Intro_to_Rails_Project
```

2. 安装依赖
```bash
bundle install
```

3. 创建数据库
```bash
rails db:create
rails db:migrate
```

4. 种子数据
```bash
rails db:seed
```

5. 启动服务器
```bash
rails server
```

6. 访问应用
```
打开浏览器访问: http://localhost:3000
```

## 项目结构

```
app/
├── controllers/        # 控制器
│   ├── home_controller.rb
│   ├── categories_controller.rb
│   ├── authors_controller.rb
│   ├── books_controller.rb
│   └── reviews_controller.rb
├── models/            # 模型
│   ├── category.rb
│   ├── author.rb
│   ├── book.rb
│   └── review.rb
├── views/             # 视图
│   ├── layouts/
│   ├── home/
│   ├── categories/
│   ├── authors/
│   ├── books/
│   └── reviews/
└── assets/            # 静态资源
    ├── stylesheets/
    ├── javascripts/
    └── images/

db/
├── migrate/           # 数据库迁移
└── seeds.rb          # 种子数据

config/
├── routes.rb         # 路由配置
└── application.rb    # 应用配置
```

## 主要路由

```
GET    /                    # 首页
GET    /categories         # 分类列表
GET    /categories/:id     # 分类详情
GET    /authors           # 作者列表
GET    /authors/:id       # 作者详情
GET    /books             # 图书列表
GET    /books/:id         # 图书详情
GET    /books/search      # 图书搜索
POST   /reviews           # 创建评论
GET    /about             # 关于页面
```

## 数据源说明

1. **手动数据**: 核心分类数据
2. **CSV数据**: 经典图书信息
3. **Faker数据**: 作者信息和评论数据
4. **API数据**: Open Library提供的图书详情

## 开发特色

- **MVC架构**: 清晰的模型-视图-控制器分离
- **ActiveRecord关联**: 完整的数据表关联关系
- **响应式设计**: Bootstrap框架确保移动端兼容
- **搜索优化**: 高效的数据库查询和索引
- **分页处理**: Kaminari gem处理大数据集
- **数据验证**: 模型层数据完整性保证
- **异常处理**: 优雅的错误处理机制

## 贡献者

本项目作为Red River College Web开发课程的一部分开发完成。

## 许可证

MIT License
